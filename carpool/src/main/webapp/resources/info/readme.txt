### 프로젝트 정보 ###

1. 조원: 한승훈, 김재민, 임종현

2. 주제: 카풀

3. 기능: 
 - 회원가입, 로그인 기능
 - 검색 및 선택 기능 (운전·승객 / 지역/ 가격/ 시간대/ 성별)
 - 상호간 연결 기능
 
○ 관리자
 - 공지사항 작성

○ 운전자
 - 카풀 게시하기
 - 카풀 신청하기

○ 탑승자
 - 카풀 게시하기
 - 카풀 신청하기

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

c_car		car_size	0 : 소형
c_car		car_size	1 : 중형
c_car		car_size	2 : 대형


### sessionScope 설명 ###

m : 로그인 했을 시에 Member 타입의 객체를 가져와서 저장

c : 로그인 했을 시에 m.getId() 를 통해서 얻어낸 id 값을 c.getCar(id) 로 Car 타입의 객체를 가져와서 저장



### 폴더 설명 ###

○ content : 실제로 하이퍼링크로 출력되는 페이지들이며 각 페이지 상단에 include header, 하단에 include footer 를 불러옵니다.

○ header : content 에 있는 페이지가 불러올 header 페이지들을 넣어둡니다.

○ footer : content 에 있는 페이지가 불러올 footer 페이지들을 넣어둡니다.

○ img : 페이지 제작에  사용되는 이미지들 또는 저장되야하는 이미지들
 
○ css : 디자인에 사용될 css 파일들이 저장되는곳

○ info : 프로젝트 진행에 필요한 내용들을 담은곳

○ js : 자바스크립트 파일을 넣어두는곳

○ json : 서블릿 요청으로 json 자료를 출력하는 jsp 파일을 저장하는곳



### WebContent 소스 설명 ###

- index.jsp : http://localhost:%tomcat포트번호%/carpool 을 입력하면 자동으로 호출되며 내부소스는 content/main.jsp 로 이동되게 되어있음

○ content
 - intro.jsp : 메뉴의 carpool? 을 클릭하면 출력되는 페이지, KITRI carpool 소개
 - passenger.jsp : 메뉴의 passenger 을 클릭하면 출력되는 페이지, passenger(승객) 리스트를 조회하고 조건을 통해 검색, 최근에 본 승객을 저장하는 쿠키
 - driver.jsp : 메뉴의 driver 을 클릭하면 출력되는 페이지, !!! 이부분은 기능은 차후 추가적으로 결정 !!!
 - main.jsp : KITRI carpool 의 메인페이지 이며 좌측상단의 로고클릭으로 출력되는 화면이기도 함, 게시판과 공지글의 최신내용을 출력하며 퀵 메뉴를 제공
 - join.jsp : 회원가입 기능을 제공하는 페이지
 - modifyInfo.jsp : 회원 정보수정 기능을 제공하는 페이지
 - recruit.jsp : 채용관련 페이지인데 사용할지는 미정...
 
○ header
 - header.jsp : content 폴더의 페이지를 호출하면 최상단에 출력될 내용... 이 파일 하나만 이용할지 아니면 추가적으로 더 만들지는 모르겟음...
 
○ footer
 - footer.jsp : content 폴더의 페이지를 호출하면 최하단에 출력될 내용... 이 파일 하나만 이용할지 아니면 추가적으로 더 만들지는 모르겟음...
 
○ css
 - view.css : 디자인 관련 css 소스들 저장... 단일로 할지 더 만들지는 모름...
 
○ js
 - 아직 암것두 음슴

○ json
 - 아직 암것두 음슴



### Servlet 소스 설명 ###

○ designPattern
 - PathInfo : 각 컴퓨터 마다의 이미지 파일의 경로설정하는 방법

○ memberController
 - 음슴

○ boardController
 - 음슴

○ carController
 - 음슴
