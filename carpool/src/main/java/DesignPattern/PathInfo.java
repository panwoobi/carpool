package DesignPattern;

public class PathInfo {
	
	private static PathInfo pi = new PathInfo();
	
//	 프로필 사진 저장 경로 : path + profile
	
//	이지연
//	private String path = "";
	
//	한승훈
//	private String path = "";
	
//	김재민
//	private String path = "C:\\Users\\panwo\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp1\\webapps\\carpool\\";
	
//	임종현
	private String path = "C:\\Users\\KITRI\\Desktop\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\webapps\\";

//	오승환
//	private String path = "";
	
	public PathInfo() {
		
	}
	
	public static PathInfo getInstance() {
		return pi;
	}
	
	public String getPath() {
		return path;
	}
}
