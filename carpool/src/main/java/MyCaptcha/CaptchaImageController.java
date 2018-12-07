//package MyCaptcha;
//
//import java.io.*;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.util.Date;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.json.simple.JSONObject;
//import org.json.simple.parser.JSONParser;
//
//import DesignPattern.PathInfo;
//
///**
// * Servlet implementation class CaptchaImageController
// */
//@WebServlet("/CaptchaImageController")
//public class CaptchaImageController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//	private static PathInfo pi;
//
//	/**
//	 * @see HttpServlet#HttpServlet()
//	 */
//	public CaptchaImageController() {
//		super();
//		pi = PathInfo.getInstance();
//		// TODO Auto-generated constructor stub
//	}
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
//	 *      response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		String key = CaptchaNkey();
//
//		// ��� ���� JSON������ String���� ���⶧���� �Ľ��ؼ� �����;�� ��.
//		// ���̺귯���� SimpleJSon�� �߰��ؾ� ������ �ȳ��ϴ�.
//		try {
//			// Key���� �Ľ��ؼ� ����. Key���̶� �� ĸ���� �̹����� �����ϱ����� �����ڷ� ���.
//			JSONParser jsonParser = new JSONParser();
//			JSONObject jsonObj = (JSONObject) jsonParser.parse(key);
//			key = (String) jsonObj.get("key");
//		} catch (Exception e) {
////			System.out.println("�Ľ̾ȴ�");
//		}
//		// Key���� ���ؼ� �̹����� �����ϰ� �����̸��� img�� ����
//		String img = CaptchaImage(key);
//
////		System.out.println("key�� " + key);
////		System.out.println("img�� " + img);
//
//		// Index �������� ������ �̵�
//		request.setAttribute("img", img);
//		request.setAttribute("key", key);
//
//		RequestDispatcher dispatcher = request.getRequestDispatcher("content/beforeJoin.jsp");
//		if (dispatcher != null) {
//			dispatcher.forward(request, response);
//		}
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
//	 *      response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//	// Ű ���� ���̹��� ���ؼ� ��� �Լ�.
//	public static String CaptchaNkey() { 
//		String nkey = "";
//		String clientId = "6AGmgCe30U75KRn0vAQg";// ���ø����̼� Ŭ���̾�Ʈ ���̵�";
//		String clientSecret = "TDh2gn2WDr";// ���ø����̼� Ŭ���̾�Ʈ ��ũ����";
//		try {
//			String code = "0"; // Ű �߱޽� 0, ĸ�� �̹��� �񱳽� 1�� ����
//			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;
//			URL url = new URL(apiURL);
//			HttpURLConnection con = (HttpURLConnection) url.openConnection();
//			con.setRequestMethod("GET");
//			con.setRequestProperty("X-Naver-Client-Id", clientId);
//			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
//			int responseCode = con.getResponseCode();
//			BufferedReader br;
//			if (responseCode == 200) { // ���� ȣ��
//				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
//			} else { // ���� �߻�
//				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
//			}
//			String inputLine;
//			StringBuffer sb = new StringBuffer();
//			while ((inputLine = br.readLine()) != null) {
//				sb.append(inputLine);
//			}
//			br.close();
////			System.out.println(sb.toString());
//			nkey = sb.toString();
//		} catch (Exception e) {
////			System.out.println(e);
//		}
//
//		return nkey;
//	}
//
//	// ĸ�� �̹��� ����
//	public static String CaptchaImage(String key) {
//
//		String clientId = "6AGmgCe30U75KRn0vAQg";// ���ø����̼� Ŭ���̾�Ʈ ���̵�";
//		String clientSecret = "x39LuzMU2M";// ���ø����̼� Ŭ���̾�Ʈ ��ũ����";
//		String img = "";
//		try {
//			// https://openapi.naver.com/v1/captcha/nkey
//			// ȣ��� ���� Ű������ �̹����� �����ϴ� ����
//			// �����η� ĸ�� �̹����� �����Ǵ°� ����
//			String path = pi.getPath();
//			String apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
//			URL url = new URL(apiURL);
//			HttpURLConnection con = (HttpURLConnection) url.openConnection();
//			con.setRequestMethod("GET");
//			con.setRequestProperty("X-Naver-Client-Id", clientId);
//			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
//			int responseCode = con.getResponseCode();
//			BufferedReader br;
//			if (responseCode == 200) { // ���� ȣ��
//				InputStream is = con.getInputStream();
//				int read = 0;
//				byte[] bytes = new byte[1024];
//
//				// ������ �̸����� ���� ����
//				String tempname = Long.valueOf(new Date().getTime()).toString();
//				// System.out.println(tempname);
//				File f = new File(path + tempname + ".jpg");
//				f.createNewFile();
//				OutputStream outputStream = new FileOutputStream(f);
//				while ((read = is.read(bytes)) != -1) {
//					outputStream.write(bytes, 0, read);
//				}
//				is.close();
//				outputStream.close();
//				img = tempname + ".jpg";
//			} else { // ���� �߻�
//				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
//				String inputLine;
//				StringBuffer sb = new StringBuffer();
//				while ((inputLine = br.readLine()) != null) {
//					sb.append(inputLine);
//				}
//				br.close();
////				System.out.println(sb.toString());
//			}
//
//		} catch (Exception e) {
////			System.out.println(e);
//		}
//		return img;
//		// �̰� �̹����̸��� �˴ϴ�.
//	}
//
//}
