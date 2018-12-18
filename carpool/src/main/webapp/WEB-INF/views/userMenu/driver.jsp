<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(document).ready(function(){
	  
	  $('#editProfile').attr("src", $('#editProfile').attr("src")+"?"+getRandom());
	  
	  $('.card').hide();
	  $('#partner').show();
	  
	  $('.list-group-item').on('click', function(){
		menu = $(this).attr("id");
	  	if(menu=="1"){
		  	  $('.card').hide();
		  	  $('#partner').show();
		  	}
	  	if(menu=="2"){
	  	  $('.card').hide();
	  	  $('#myInfo').show();
	  	}
	  
	  	if(menu=="3"){
	  	  $('.card').hide();
	  	  $('#ccar').show();
	  	}
	  
	  	if(menu=="4"){
	  	  $('.card').hide();
	  	  $('#edit').show();
	  	}
	  	if(menu=="5"){
	  	  $('.card').hide();
	  	  $('#delete').show();
	  	}

	  });

	  $('#carEnroll').on('click',function(){
	    $('.card').hide();
	    $('#enrollCarProc').show();
	  });
	  
    var read = function(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
          $('#editProfile').attr('src', e.target.result);
        }

        reader.readAsDataURL(input.files[0]);
      }
    }

    $("#editProfileBtn").on('change', function() {
      read(this);
    });
	  
	$("#profileCommit").click(function(){
	  	alert(getRandom());
	    alert("Profile Change Commit");
	  });
	
	$('#re').click(function(){
	    location.reload();
	});
	
	$("#deleteDriver").click(function(){
	  
	  	var pwd =$('#deletePwd').val();
	    var obj = new Object();
        obj.input = pwd;
        var jsonData = JSON.stringify(obj);

	    $.ajax({
	      url : "${pageContext.request.contextPath }/delete",
	      type : "POST",
	      dataType: "json",
	      data: jsonData,
	      contentType : "application/json",
	      success : function(responseData) {
	       
	       	if(responseData==true){
	       	  alert("Success");
	       	 window.location.href = "${pageContext.request.contextPath }/";
	       	}else{
	           alert("Not Correct Password");
	       	}
	      }
	    });
	});
	
	
	
	});
</script>

<script >
    function getRandom(){
        var currentDate = new Date();         
        var msg = currentDate.getHours();
        msg += currentDate.getMinutes();
        msg += currentDate.getSeconds();
        return msg;
    }
</script>
<style>
#list {
	text-align: center;
}

#write {
	text-align: right;
}

/* Bootstrap 수정 */
.table {
	width: 100%;
	margin: auto;
}

.table>thead {
	background-color: #b3c6ff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}
</style>

<br>
<br>
<div class="container">
	<div class="row">
		<div class="col-md-3 ">
			<div class="list-group">

				<div class="form-group row">
					<div class="container">
						<div style="width: 140px; height: 140px; overflow: hidden border-radius: 70px; margin-left: auto; margin-right: auto; display: block;">
							<img id="editProfile" class="rounded-circle" src="${sessionScope.m.profile }" style="width: 140px; height: 140px; margin-left: auto; margin-right: auto; display: block;">
						</div>
						<form action="${pageContext.request.contextPath }/editProfile" method="POST" enctype="multipart/form-data">
							<input type="file" id="editProfileBtn" name="editProfileBtn" style="display: none;"> <input type="button" value="프로필 변경" class="btn btn-link" style="float: left;" onclick="document.getElementById('editProfileBtn').click();" /> <input type="submit" class="btn btn-link" id="profileCommit" value="저장" style="float: right;">
						</form>
					</div>
				</div>

				<h5>MENU</h5>
				<a href="#" id="1" class="list-group-item list-group-item-action">Partner</a> <a href="#" id="2" class="list-group-item list-group-item-action">My Info</a> <a href="#" id="3" class="list-group-item list-group-item-action">Car</a> <a href="#" id="4" class="list-group-item list-group-item-action">Edit My Info</a> <a href="#" id="5" class="list-group-item list-group-item-action">Delete My Account</a>
			</div>
		</div>
		<div class="col-md-9">

			<!-- partner start -->
			<div class="card" id="partner">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>Your Partner</h4>
							<hr>
						</div>
					</div>
					<table class="table table-hover">
					<caption>Driver Board</caption>
						<thead class="thead-light">
							<tr>
								<th width="13%">제목</th>
								<th width="13%">출발</th>
								<th width="13%">도착</th>
								<th width="12%">출발시간</th>
								<th width="12%">탑승자1</th>
								<th width="12%">탑승자2</th>
								<th width="15%">탑승자3</th>
								<th width="10%">금액</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty Dlist}">
									<tr>
										<td colspan="8">파트너가 없습니다.</td>
									</tr>
								</c:when>
								<c:when test="${!empty Dlist }">
									<c:forEach var="b" items="${Dlist }" varStatus="status">
										<tr>
											<td><a href="${pageContext.request.contextPath }/driverDetail?num=${b.num }">${b.title}</a></td>
											<td>${b.start_posi}</td>
											<td>${b.end_posi}</td>
											<td>${b.start_time}</td>
											<td><a href="${pageContext.request.contextPath}/memberDetail?id=${b.passenger1}">${b.passenger1}</a></td>
											<c:choose>
												<c:when test="${b.passenger2!=null and b.passenger2!=''}">
													<td><a href="${pageContext.request.contextPath}/memberDetail?id=${b.passenger2}">${b.passenger2}</a></td>
												</c:when>
												<c:otherwise>
													<td>-</td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${b.passenger3!=null and b.passenger3!=''}">
													<td><a href="${pageContext.request.contextPath}/memberDetail?id=${b.passenger3}">${b.passenger3}</a></td>
												</c:when>
												<c:otherwise>
													<td>-</td>
												</c:otherwise>
											</c:choose>
											<td>${b.price}원</td>
										</tr>
									</c:forEach>
								</c:when>
							</c:choose>
						</tbody>
					</table>
					<br><br><br>
					<table class="table table-hover">
					<caption>Passenger Board</caption>
						<thead class="thead-light">
							<tr>
								<th width="15%">제목</th>
								<th width="20%">출발</th>
								<th width="20%">도착</th>
								<th width="15%">출발시간</th>
								<th width="20%">탑승자</th>
								<th width="10%">금액</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty Plist }">
									<tr>
										<td colspan="6">파트너가 없습니다.</td>
									</tr>
								</c:when>
								<c:when test="${!empty Plist }">
									<c:forEach var="b" items="${Plist }" varStatus="status">
										<tr>
											<td><a href="${pageContext.request.contextPath }/passengerDetail?num=${b.num }">${b.title}</a></td>
											<td>${b.start_posi}</td>
											<td>${b.end_posi}</td>
											<td>${b.start_time}</td>
											<td><a href="${pageContext.request.contextPath}/memberDetail?id=${b.passenger1}">${b.passenger1}</a></td>
											<td>${b.price}원</td>
										</tr>
									</c:forEach>
								</c:when>
							</c:choose>
						</tbody>
					</table>
				</div>
			</div>

			<!-- partner end -->

			<!-- My Info start -->
			<div class="card" id="myInfo">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>Your Information</h4>
							<hr>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group row">
								<label class="col-4 col-form-label">이름</label>
								<div class="col-8">
									<input value="${sessionScope.m.name }" class="form-control here" type="text" readonly>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-4 col-form-label">아이디</label>
								<div class="col-8">
									<input value="${sessionScope.m.id }" class="form-control here" type="text" readonly>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-4 col-form-label">이메일</label>
								<div class="col-8">
									<input value="${sessionScope.m.email }" class="form-control here" type="text" readonly>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-4 col-form-label">전화번호</label>
								<div class="col-8">
									<input value="${sessionScope.m.tel }" class="form-control here" type="text" readonly>
								</div>
							</div>
							<div class="form-group row">
								<label class="col-4 col-form-label">유형</label>
								<div class="col-8">
									<input value="Driver" class="form-control here" type="text" readonly>
								</div>
							</div>


							<div class="form-group row">
								<label class="col-4 col-form-label">성별</label>
								<div class="col-8">

									<c:choose>
										<c:when test="${sessionScope.m.sex eq 0}">
											<input value="남" class="form-control here" type="text" readonly>
										</c:when>

										<c:when test="${sessionScope.m.sex eq 1}">
											<input value="여" class="form-control here" type="text" readonly>
										</c:when>
									</c:choose>


								</div>
							</div>


							<div class="form-group row">
								<label class="col-4 col-form-label">흡연여부</label>
								<div class="col-8">
									<c:choose>
										<c:when test="${sessionScope.m.isSmoke eq 0}">
											<input value="비흡연" class="form-control here" type="text" readonly>
										</c:when>

										<c:when test="${sessionScope.m.isSmoke eq 1}">
											<input value="흡연" class="form-control here" type="text" readonly>
										</c:when>
									</c:choose>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- My Info end -->



			<!-- Car start -->
			<div class="card" id="ccar">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>Your Car</h4>
							<hr>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<form action="${pageContext.request.contextPath}/deleteCar" method="post">

								<c:choose>
									<c:when test="${empty sessionScope.c }">
										<h3>
											등록된 차가 없습니다<br> <br> <a href="#" id="carEnroll">차를 등록해주세요</a> :(
										</h3>
									</c:when>
									<c:otherwise>
										<div class="form-group row">
											<label class="col-4 col-form-label">Owner</label>
											<div class="col-8">
												<input value="${sessionScope.m.id }" class="form-control here" type="text" readonly>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-4 col-form-label">운전면허번호</label>
											<div class="col-8">
												<input value="${sessionScope.c.license }" class="form-control here" type="text" readonly>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-4 col-form-label">차량번호</label>
											<div class="col-8">
												<input value="${sessionScope.c.number_plate }" class="form-control here" type="text" readonly>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-4 col-form-label">킬로수</label>
											<div class="col-8">
												<input value="${sessionScope.c.mileage }" class="form-control here" type="number" readonly>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-4 col-form-label">연식</label>
											<div class="col-8">
												<input value="${sessionScope.c.age }" class="form-control here" type="text" readonly>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-4 col-form-label">차종</label>
											<div class="col-8">
												<input value="${sessionScope.c.car_name }" class="form-control here" type="text" readonly>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-4 col-form-label">차 크기</label>
											<div class="col-8">
												<input value="${sessionScope.c.car_size }" class="form-control here" type="text" readonly>
											</div>
										</div>
										<div class="form-group row">
											<div class="offset-8 col-4">
												<input value="삭제" class="form-control here" type="submit">
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- Car end -->




			<!-- Edit start -->
			<div class="card" id="edit">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>Edit your Info</h4>
							<hr>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<form action="${pageContext.request.contextPath }/editInfo" method="post">
								<div class="form-group row">
									<label class="col-4 col-form-label">이름</label>
									<div class="col-8">
										<input name="name" class="form-control here" type="text" value="${sessionScope.m.name }" required oninvalid="this.setCustomValidity('닉네임을 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>

								<div class="form-group row">
									<label class="col-4 col-form-label">패스워드</label>
									<div class="col-8">
										<input name="pw" class="form-control here" type="password" value="${sessionScope.m.pw }" required oninvalid="this.setCustomValidity('password를 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">이메일</label>
									<div class="col-8">
										<input name="email" class="form-control here" type="email" value="${sessionScope.m.email }" required oninvalid="this.setCustomValidity('email을 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">전화번호</label>
									<div class="col-8">
										<input name="tel" class="form-control here" type="text" value="${sessionScope.m.tel }" required oninvalid="this.setCustomValidity('연락처를 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>

								<div class="form-group row">
									<label class="col-4 col-form-label">흡연여부</label>
									<div class="col-8">
										<select name="isSmoke" class="form-control">
											<option selected value="0">비흡연</option>
											<option value="1">흡연</option>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<div class="offset-8 col-4">
										<input value="변경" class="form-control here" type="submit">
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>





			</div>
			<!-- Edit end -->
			<!-- Delete start -->
			<div class="card" id="delete">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>Delete Account</h4>
							<hr>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							회원 탈퇴를 하시면 회원 가입시<br>
							입력하신 모든 정보가 삭제됩니다.<br>
							그와 동시에 KITRI Carpool 을 사용하면서<br>
							작성하신 게시글 내역 또한 함께 삭제됩니다.<br><br>
							<input type="password" id="deletePwd" placeholder="Password"><br><br>
							위 안내사항을 모두 확인하였으며, <br>이에 동의하시면 탈퇴 진행을 위하여 패스워드를 입력하고 "탈퇴" 버튼을 눌러주세요.<br><br>
		            
						</div>
						<div class="form-group row">
							<div class="col-md-12">
								<div class="container">
									<input id="deleteDriver" value="탈퇴" class="form-control here" type="button">
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- Delete end -->
			<!-- Enroll start -->
			<div class="card" id="enrollCarProc">
				<div class="card-body">
					<div class="row">
						<div class="col-md-12">
							<h4>Car Enroll</h4>
							<hr>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<form action="${pageContext.request.contextPath }/enrollCar" method="post">
								<div class="form-group row">
									<label class="col-4 col-form-label">소유주</label>
									<div class="col-8">
										<input value="${sessionScope.m.id }" name="owner" class="form-control here" type="text" readonly>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">운전면허번호</label>
									<div class="col-8">
										<input name="license" class="form-control here" type="password" required oninvalid="this.setCustomValidity('Licence번호를 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">차량번호</label>
									<div class="col-8">
										<input name="number_plate" class="form-control here" type="text" required oninvalid="this.setCustomValidity('number plate를 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">킬로수</label>
									<div class="col-8">
										<input name="mileage" class="form-control here" type="text" required oninvalid="this.setCustomValidity('마일리지를 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">연식</label>
									<div class="col-8">
										<select name="age" class="form-control">
											<option selected value="1970">1970</option>
											<c:forEach begin="1971" end="2030" varStatus="status">
												<option value="${status.index }">${status.index }</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">차종</label>
									<div class="col-8">
										<input name="car_name" class="form-control here" type="text" required oninvalid="this.setCustomValidity('차 종을 입력하세요')" oninput="setCustomValidity('')">
									</div>
								</div>
								<div class="form-group row">
									<label class="col-4 col-form-label">차 크기</label>
									<div class="col-8">
										<select name="car_size" class="form-control">
											<option selected value="1">소형</option>
											<option value="2">중형</option>
											<option value="2">대형</option>
										</select>
									</div>
								</div>
								<div class="form-group row">
									<div class="offset-8 col-4">
										<input value="등록" class="form-control here" type="submit">
									</div>
								</div>
							</form>
						</div>

					</div>




				</div>
			</div>
			<!-- Enroll end -->

		</div>

	</div>
</div>

<br>
<br>