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

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kitri.carpool.member.Member;

@Controller
public class myCaptcha {

	private static String key;
	
	@RequestMapping("/captchaImg")
	@ResponseBody
	public Map<String,String> getCaptcha() {

		Map<String, String> map = new HashMap<String, String>();
		key = CaptchaNkey();

		// 모든 값이 JSON형식의 String으로 오기때문에 파싱해서 데이터얻는 것.
		// 라이브러리에 SimpleJSon을 추가해야 에러가 안납니다.
		try {
			// Key값을 파싱해서 얻음. Key값이란 각 캡차의 이미지를 생성하기위해 구분자로 사용.
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(key);
			key = (String) jsonObj.get("key");
		} catch (Exception e) {
			System.out.println("파싱안댐");
		}
		// Key값을 통해서 이미지를 생성하고 파일이름을 img에 담음
		String img = CaptchaImage(key);

//		System.out.println("key는 " + key);
//		System.out.println("img는 " + img);
		map.put("img", img);		
		
		return map;
	}
	
	
	
	

	@RequestMapping("/captchaResult")
	public String captcahResult(Member m , HttpServletRequest request) {

		String path="";
		
		// index 페이지에서 가져온 값
		String input = (String) request.getParameter("input");

		String result = CaptchaNkeyResult(key, input);
		boolean b = false;

		
		System.out.println(m);
		System.out.println("input: "+input);
		try {
			// result 또한 JSON형식이므로 파싱 하여 boolean값 b에 할당
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
			b = (Boolean) jsonObj.get("result");
			System.out.println("boolean: "+b);
		} catch (Exception e) {
			System.out.println("파싱안댐");
		}
		if (b == true) {
			path = "redirect:/";
			request.setAttribute("chk", true);

		} else {
			path = "redirect:/";

		}
		return path;
	}

	public static String CaptchaNkey() {
		String nkey = "";
		String clientId = "6AGmgCe30U75KRn0vAQg";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "TDh2gn2WDr";// 애플리케이션 클라이언트 시크릿값";
		try {
			String code = "0"; // 키 발급시 0, 캡차 이미지 비교시 1로 세팅
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
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

	// 캡차 이미지 수신
	public static String CaptchaImage(String key) {

		String clientId = "6AGmgCe30U75KRn0vAQg";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "x39LuzMU2M";// 애플리케이션 클라이언트 시크릿값";
		String img = "";
		String path="";
		String apiURL="";
		try {
			// https://openapi.naver.com/v1/captcha/nkey
			// 호출로 받은 키값으로 이미지를 생성하는 과정
			// 절대경로로 캡차 이미지가 생성되는곳 지정
			
			apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				InputStream is = con.getInputStream();
				int read = 0;
				byte[] bytes = new byte[1024];

				// 랜덤한 이름으로 파일 생성
				String tempname = Long.valueOf(new Date().getTime()).toString();
				System.out.println(tempname);
				
				File f = new File(path + tempname + ".jpg");
				f.createNewFile();
				OutputStream outputStream = new FileOutputStream(f);
				while ((read = is.read(bytes)) != -1) {
					outputStream.write(bytes, 0, read);
				}
				is.close();
				outputStream.close();
				img = tempname + ".jpg";
			} else { // 에러 발생
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
		// 이게 이미지이름이 됩니다.
	}

	public static String CaptchaNkeyResult(String key, String value) {
		String result = "";
		String clientId = "6AGmgCe30U75KRn0vAQg";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "TDh2gn2WDr";// 애플리케이션 클라이언트 시크릿값";
		try {
			String code = "1"; // 키 발급시 0, 캡차 이미지 비교시 1로 세팅
			// 캡차 키 발급시 받은 키값
			// 사용자가 입력한 캡차 이미지 글자값
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value="
					+ value;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
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

}
