package DesignPattern;

public class PathInfo {
	private static PathInfo pi = new PathInfo();
	
	// ������ ������� : �Ʒ� �⺻��� + profile
	
//	������
//	private String path = "";
	
//	�ѽ���
//	private String path = "";
	
//	�����
	private String path = "C:\\Users\\panwo\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp3\\webapps\\carpool\\";
	
//	������
//	private String path = "C:\\Users\\KITRI\\Desktop\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp2\\webapps\\carpool\\";

//	����ȯ
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
