//package MyCaptcha;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import java.io.BufferedReader;
//import java.io.InputStreamReader;
//import java.net.HttpURLConnection;
//import java.net.URL;
//
//import javax.servlet.RequestDispatcher;
//import org.json.simple.JSONObject;
//import org.json.simple.parser.JSONParser;
//
///**
// * Servlet implementation class CapchaResultController
// */
//@WebServlet("/CaptchaResultController")
//public class CaptchaResultController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	/**
//	 * @see HttpServlet#HttpServlet()
//	 */
//	public CaptchaResultController() {
//		super();
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
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
//	 *      response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// TODO Auto-generated method stub
//
//		// index ���������� ������ ��
//		String key = (String) request.getParameter("key");
//		String input = (String) request.getParameter("input");
//
//		// �̹��� ���� �Է��� ���� ��
//		// ������ true �ƴϸ� false
////		System.out.println(input);
//		String result = CaptchaNkeyResult(key, input);
//		boolean b = false;
//
//		// true or false�� ���� �̵��� ���������
//		String path = "";
//
//		try {
//			// result ���� JSON�����̹Ƿ� �Ľ� �Ͽ� boolean�� b�� �Ҵ�
//			JSONParser jsonParser = new JSONParser();
//			JSONObject jsonObj = (JSONObject) jsonParser.parse(result);
//			b = (boolean) jsonObj.get("result");
//		} catch (Exception e) {
////			System.out.println("�Ľ̾ȴ�");
//		}
//		request.setAttribute("result", b);
//		request.setAttribute("check", 1);
//		if (b == true) {
//			path = "content/join.jsp";
//			request.setAttribute("chk", true);
//			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//			if (dispatcher != null) {
//				dispatcher.forward(request, response);
//			}
//		} else {
//			path = "CaptchaImageController";
//			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//			if (dispatcher != null) {
//				dispatcher.forward(request, response);
//			}
//		}
//	}
//
//	public static String CaptchaNkeyResult(String key, String value) {
//		String result = "";
//		String clientId = "6AGmgCe30U75KRn0vAQg";// ���ø����̼� Ŭ���̾�Ʈ ���̵�";
//		String clientSecret = "TDh2gn2WDr";// ���ø����̼� Ŭ���̾�Ʈ ��ũ����";
//		try {
//			String code = "1"; // Ű �߱޽� 0, ĸ�� �̹��� �񱳽� 1�� ����
//			// ĸ�� Ű �߱޽� ���� Ű��
//			// ����ڰ� �Է��� ĸ�� �̹��� ���ڰ�
//			String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value="
//					+ value;
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
//			result = sb.toString();
//		} catch (Exception e) {
////			System.out.println(e);
//		}
//
//		return result;
//	}
//
//}
