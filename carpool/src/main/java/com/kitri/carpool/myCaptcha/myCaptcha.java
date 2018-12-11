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

		// ��� ���� JSON������ String���� ���⶧���� �Ľ��ؼ� �����;�� ��.
		// ���̺귯���� SimpleJSon�� �߰��ؾ� ������ �ȳ��ϴ�.
		try {
			// Key���� �Ľ��ؼ� ����. Key���̶� �� ĸ���� �̹����� �����ϱ����� �����ڷ� ���.
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(key);
			key = (String) jsonObj.get("key");
		} catch (Exception e) {
			System.out.println("�Ľ̾ȴ�");
		}
		// Key���� ���ؼ� �̹����� �����ϰ� �����̸��� img�� ����
		String img = CaptchaImage(key);

//		System.out.println("key�� " + key);
//		System.out.println("img�� " + img);
		map.put("img", img);		
		
		return map;
	}
	
	
	
	

	@RequestMapping("/captchaResult")
	public String captcahResult(Member m , HttpServletRequest request) {

		String path="";
		
		// index ���������� ������ ��
		String input = (String) request.getParameter("input");

		String result = CaptchaNkeyResult(key, input);
		boolean b = false;

		
		System.out.println(m);
		System.out.println("input: "+input);
		try {
			// result ���� JSON�����̹Ƿ� �Ľ� �Ͽ� boolean�� b�� �Ҵ�
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
			b = (Boolean) jsonObj.get("result");
			System.out.println("boolean: "+b);
		} catch (Exception e) {
			System.out.println("�Ľ̾ȴ�");
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
		String clientId = "6AGmgCe30U75KRn0vAQg";// ���ø����̼� Ŭ���̾�Ʈ ���̵�";
		String clientSecret = "TDh2gn2WDr";// ���ø����̼� Ŭ���̾�Ʈ ��ũ����";
		try {
			String code = "0"; // Ű �߱޽� 0, ĸ�� �̹��� �񱳽� 1�� ����
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // ���� ȣ��
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

	// ĸ�� �̹��� ����
	public static String CaptchaImage(String key) {

		String clientId = "6AGmgCe30U75KRn0vAQg";// ���ø����̼� Ŭ���̾�Ʈ ���̵�";
		String clientSecret = "x39LuzMU2M";// ���ø����̼� Ŭ���̾�Ʈ ��ũ����";
		String img = "";
		String path="";
		String apiURL="";
		try {
			// https://openapi.naver.com/v1/captcha/nkey
			// ȣ��� ���� Ű������ �̹����� �����ϴ� ����
			// �����η� ĸ�� �̹����� �����Ǵ°� ����
			
			apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // ���� ȣ��
				InputStream is = con.getInputStream();
				int read = 0;
				byte[] bytes = new byte[1024];

				// ������ �̸����� ���� ����
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
			} else { // ���� �߻�
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
		// �̰� �̹����̸��� �˴ϴ�.
	}

	public static String CaptchaNkeyResult(String key, String value) {
		String result = "";
		String clientId = "6AGmgCe30U75KRn0vAQg";// ���ø����̼� Ŭ���̾�Ʈ ���̵�";
		String clientSecret = "TDh2gn2WDr";// ���ø����̼� Ŭ���̾�Ʈ ��ũ����";
		try {
			String code = "1"; // Ű �߱޽� 0, ĸ�� �̹��� �񱳽� 1�� ����
			// ĸ�� Ű �߱޽� ���� Ű��
			// ����ڰ� �Է��� ĸ�� �̹��� ���ڰ�
			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value="
					+ value;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // ���� ȣ��
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
			result = sb.toString();
		} catch (Exception e) {
//			System.out.println(e);
		}

		return result;
	}

}
