### ������Ʈ ���� ###

1. ����: �ѽ���, �����, ������

2. ����: īǮ

3. ���: 
 - ȸ������, �α��� ���
 - �˻� �� ���� ��� (�������°� / ����/ ����/ �ð���/ ����)
 - ��ȣ�� ���� ���
 
�� ������
 - �������� �ۼ�

�� ������
 - īǮ �Խ��ϱ�
 - īǮ ��û�ϱ�

�� ž����
 - īǮ �Խ��ϱ�
 - īǮ ��û�ϱ�

c_member	type		0 : admin
c_member	type		1 : driver
c_member	type		2 : passenger

c_member	sex			0 : male
c_member	sex			1 : female

c_member	issmoke		0 : non-smoke
c_member	issomke		1 : smoke

c_board1	type		0 : driver
c_board1	type		1 : passenger

c_board2	type		0 : notice
c_board2	type		1 : freeboard

c_car		car_size	0 : ����
c_car		car_size	1 : ����
c_car		car_size	2 : ����


### sessionScope ���� ###

m : �α��� ���� �ÿ� Member Ÿ���� ��ü�� �����ͼ� ����

c : �α��� ���� �ÿ� m.getId() �� ���ؼ� �� id ���� c.getCar(id) �� Car Ÿ���� ��ü�� �����ͼ� ����



### ���� ���� ###

�� content : ������ �����۸�ũ�� ��µǴ� ���������̸� �� ������ ��ܿ� include header, �ϴܿ� include footer �� �ҷ��ɴϴ�.

�� header : content �� �ִ� �������� �ҷ��� header ���������� �־�Ӵϴ�.

�� footer : content �� �ִ� �������� �ҷ��� footer ���������� �־�Ӵϴ�.

�� img : ������ ���ۿ�  ���Ǵ� �̹����� �Ǵ� ����Ǿ��ϴ� �̹�����
 
�� css : �����ο� ���� css ���ϵ��� ����Ǵ°�

�� info : ������Ʈ ���࿡ �ʿ��� ������� ������

�� js : �ڹٽ�ũ��Ʈ ������ �־�δ°�

�� json : ���� ��û���� json �ڷḦ ����ϴ� jsp ������ �����ϴ°�



### WebContent �ҽ� ���� ###

- index.jsp : http://localhost:%tomcat��Ʈ��ȣ%/carpool �� �Է��ϸ� �ڵ����� ȣ��Ǹ� ���μҽ��� content/main.jsp �� �̵��ǰ� �Ǿ�����

�� content
 - intro.jsp : �޴��� carpool? �� Ŭ���ϸ� ��µǴ� ������, KITRI carpool �Ұ�
 - passenger.jsp : �޴��� passenger �� Ŭ���ϸ� ��µǴ� ������, passenger(�°�) ����Ʈ�� ��ȸ�ϰ� ������ ���� �˻�, �ֱٿ� �� �°��� �����ϴ� ��Ű
 - driver.jsp : �޴��� driver �� Ŭ���ϸ� ��µǴ� ������, !!! �̺κ��� ����� ���� �߰������� ���� !!!
 - main.jsp : KITRI carpool �� ���������� �̸� ��������� �ΰ�Ŭ������ ��µǴ� ȭ���̱⵵ ��, �Խ��ǰ� �������� �ֽų����� ����ϸ� �� �޴��� ����
 - join.jsp : ȸ������ ����� �����ϴ� ������
 - modifyInfo.jsp : ȸ�� �������� ����� �����ϴ� ������
 - recruit.jsp : ä����� �������ε� ��������� ����...
 
�� header
 - header.jsp : content ������ �������� ȣ���ϸ� �ֻ�ܿ� ��µ� ����... �� ���� �ϳ��� �̿����� �ƴϸ� �߰������� �� �������� �𸣰���...
 
�� footer
 - footer.jsp : content ������ �������� ȣ���ϸ� ���ϴܿ� ��µ� ����... �� ���� �ϳ��� �̿����� �ƴϸ� �߰������� �� �������� �𸣰���...
 
�� css
 - view.css : ������ ���� css �ҽ��� ����... ���Ϸ� ���� �� �������� ��...
 
�� js
 - ���� �ϰ͵� ����

�� json
 - ���� �ϰ͵� ����



### Servlet �ҽ� ���� ###

�� designPattern
 - PathInfo : �� ��ǻ�� ������ �̹��� ������ ��μ����ϴ� ���

�� memberController
 - ����

�� boardController
 - ����

�� carController
 - ����
