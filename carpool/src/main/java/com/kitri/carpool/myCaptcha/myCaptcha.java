package com.kitri.carpool.myCaptcha;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.kitri.carpool.member.Member;
import com.kitri.carpool.member.MemberService;

import DesignPattern.PathInfo;

@Controller
public class myCaptcha {

	private static String key;
	private PathInfo pi;
	
	@Autowired
	private JavaMailSender mailSender;

	public myCaptcha() {
		pi = PathInfo.getInstance();
	}

	@Resource(name = "memberService")
	private MemberService service;

	@RequestMapping("/captchaImg")
	@ResponseBody
	public Map<String, String> getCaptcha() {

		Map<String, String> map = new HashMap<String, String>();
		key = CaptchaNkey();

		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(key);
			key = (String) jsonObj.get("key");
		} catch (Exception e) {
		}
		String img = CaptchaImage(key);

//		System.out.println("key " + key);
//		System.out.println("img " + img);
		map.put("img", img);
		return map;
	}

	@RequestMapping("/captchaResult")
	public String captcahResult(Member m, HttpServletRequest request, @RequestParam("ff") MultipartFile file, Model model) {

		String path = "";
		File newFile = null;
		String input = (String) request.getParameter("input");
		String result = CaptchaNkeyResult(key, input);
		boolean b = false;
		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
			b = (Boolean) jsonObj.get("result");
			System.out.println("boolean: " + b);
		} catch (Exception e) {
		}

		if (b == true) {

			MultipartFile f = file;
			if (f != null) {
				String fileName = f.getOriginalFilename();
				if (fileName.equals("") || fileName == null) {
					m.setProfile("/profile/default_profile.jpg");
				} else {
					String t = fileName.split("\\.")[1];
					newFile = new File(pi.getPath() + "profile\\" + m.getId() + "." + t);

					try {
						f.transferTo(newFile);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					m.setProfile("/profile/" + m.getId() + "." + t);
				}
			}
			path = "redirect:/";

		} else {
			return "redirect:/";

		}
		String key = getRandomKey();
		m.setTmpkey(key);
		m.setIsValidate(0);
		m.setJdate(null);
		service.join(m);
		HttpSession session = request.getSession();
		session.setAttribute("m", m);
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom("kitricarpool@gmail.com"); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(m.getEmail()); // 받는사람 이메일
			messageHelper.setSubject("Kitri Carpool 가입을 환영합니다"); // 메일제목은 생략이 가능하다
//			String temppwd = Long.valueOf(new Date().getTime()).toString();
			messageHelper.setText(key+" 를 등록하세요"); // 메일 내용
			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println(m);
		return path;
	}

	public static String CaptchaNkey() {
		String nkey = "";
		String clientId = "6AGmgCe30U75KRn0vAQg";
		String clientSecret = "TDh2gn2WDr";
		try {
			String code = "0";
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // ���� �߻�
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer sb = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}
			br.close();
//			System.out.println(sb.toString());
			nkey = sb.toString();
		} catch (Exception e) {
//			System.out.println(e);
		}

		return nkey;
	}

	public static String CaptchaImage(String key) {

		String clientId = "6AGmgCe30U75KRn0vAQg";
		String clientSecret = "x39LuzMU2M";
//		String img = "";
		String path = "";
		String apiURL = "";

		try {
			apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				InputStream is = con.getInputStream();
				int read = 0;
				byte[] bytes = new byte[1024];
				String tempname = Long.valueOf(new Date().getTime()).toString();
				// System.out.println(tempname);

				File f = new File(path + tempname + ".jpg");
				f.createNewFile();
				OutputStream outputStream = new FileOutputStream(f);
				while ((read = is.read(bytes)) != -1) {
					outputStream.write(bytes, 0, read);
				}
				is.close();
				outputStream.close();
//				img = tempname + ".jpg";
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
				String inputLine;
				StringBuffer sb = new StringBuffer();
				while ((inputLine = br.readLine()) != null) {
					sb.append(inputLine);
				}
				br.close();
//				System.out.println(sb.toString());
			}

		} catch (Exception e) {
//			System.out.println(e);
		}

		return apiURL;
	}

	public static String CaptchaNkeyResult(String key, String value) {
		String result = "";
		String clientId = "6AGmgCe30U75KRn0vAQg";
		;
		String clientSecret = "TDh2gn2WDr";
		try {
			String code = "1";
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value="
					+ value;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer sb = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				sb.append(inputLine);
			}
			br.close();
//			System.out.println(sb.toString());
			result = sb.toString();
		} catch (Exception e) {
//			System.out.println(e);
		}

		return result;
	}

	public static String getRandomKey() {
		char[] charaters = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
				's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

		StringBuffer sb = new StringBuffer();
		Random r = new Random();

		for (int i = 0; i < 8; i++) {
			sb.append(charaters[r.nextInt(charaters.length)]);
		}

		return sb.toString();
	}

}
