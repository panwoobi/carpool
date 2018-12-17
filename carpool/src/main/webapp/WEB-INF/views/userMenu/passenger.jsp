<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(document).ready(function(){
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
	  	  $('#edit').show();
	  	}
	  	if(menu=="4"){
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
    
    $('#re').click(function(){
      location.reload();
    });

    $("#editProfileBtn").on('change', function() {
      read(this);
    });
	  
	$("#profileCommit").click(function(){
	    alert("Profile Change Commit");
	  });
	
	
	$("#deletePassenger").click(function(){
	  
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





<br><br>
<div class="container">
	<div class="row">
		<div class="col-md-3 ">
		     <div class="list-group">
		    
						<div class="form-group row">
							<div class="container">
									<div style="width: 140px; height: 140px; overflow: hidden border-radius: 70px; margin-left: auto; margin-right: auto; display: block;">
										<img id="editProfile" class="rounded-circle" src="/profile/${sessionScope.m.id }.jpg" style="width: 140px; height: 140px; margin-left: auto; margin-right: auto; display: block;">
									</div>
									<form action="${pageContext.request.contextPath }/editProfile" method="POST" enctype="multipart/form-data">
									<input type="file" id="editProfileBtn" name="editProfileBtn" style="display: none;">
									<input type="button" value="Profile Change"  class="btn btn-link" style="float:left;" onclick="document.getElementById('editProfileBtn').click();" />
									<input type="submit"  id="re" class="btn btn-link" id="profileCommit" value="Save" style="float:right;">
									</form>
							</div>
						</div>
			  
              <h5>MENU</h5>
              <a href="#" id="1" class="list-group-item list-group-item-action">Partner</a>
              <a href="#" id="2" class="list-group-item list-group-item-action">My Info</a>
              <a href="#" id="3" class="list-group-item list-group-item-action">Edit My Info</a>
              <a href="#" id="4" class="list-group-item list-group-item-action">Delete My Account</a>
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
								<th width="15%">제목</th>
								<th width="20%">출발</th>
								<th width="20%">도착</th>
								<th width="15%">출발시간</th>
								<th width="20%">운전자</th>
								<th width="10%">금액</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty Dlist}">
									<tr>
										<td colspan="6">파트너가 없습니다.</td>
									</tr>
								</c:when>
								<c:when test="${!empty Dlist }">
									<c:forEach var="b" items="${Dlist }" varStatus="status">
										<tr>
											<td><a href="${pageContext.request.contextPath }/driverDetail?num=${b.num }">${b.title}</a></td>
											<td>${b.start_posi}</td>
											<td>${b.end_posi}</td>
											<td>${b.start_time}</td>
											<td><a href="${pageContext.request.contextPath}/memberDetail?id=${b.driver}">${b.driver}</a></td>
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
								<th width="20%">운전자</th>
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
											<td><a href="${pageContext.request.contextPath}/memberDetail?id=${b.driver}">${b.driver}</a></td>
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
		                    <h4>Your Profile</h4>
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
                                  <input value="Passenger" class="form-control here" type="text" readonly>
                                </div>
                              </div>
                              
                              
                              <div class="form-group row">
                                <label class="col-4 col-form-label">Sex</label> 
                                <div class="col-8">
                                
                                <c:choose>
                                <c:when test="${sessionScope.m.sex eq 0}">
                                  <input value="Man" class="form-control here" type="text" readonly>
                                </c:when>
                               
                                <c:when test="${sessionScope.m.sex eq 1}">
                                  <input value="Woman" class="form-control here" type="text" readonly>
                                </c:when>
                                </c:choose>
                                
                                
                                </div>
                              </div>
                              
                              
                               <div class="form-group row">
                                <label class="col-4 col-form-label">IsSmoke</label> 
                                <div class="col-8">
                                <c:choose>
                                <c:when test="${sessionScope.m.isSmoke eq 0}">
                                  <input value="No" class="form-control here" type="text" readonly>
                                </c:when>
                               
                                <c:when test="${sessionScope.m.isSmoke eq 1}">
                                  <input value="Yes" class="form-control here" type="text" readonly>
                                </c:when>
                                </c:choose>                               
                                 </div>
                              </div>
		                </div>
		            </div>
		            
		        </div>
		    </div>
		<!-- My Info end -->
		
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
                                <label class="col-4 col-form-label">User Name</label> 
                                <div class="col-8">
                                  <input name="name" class="form-control here" type="text">
                                </div>
                              </div>

                                <div class="form-group row">
                                <label class="col-4 col-form-label">User Password</label> 
                                <div class="col-8">
                                  <input name="pw" class="form-control here" type="password" >
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User Email</label> 
                                <div class="col-8">
                                  <input name="email" class="form-control here" type="email">
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User Tel</label> 
                                <div class="col-8">
                                  <input name="tel" class="form-control here" type="text" >
                                </div>
                              </div>
   
                               <div class="form-group row">
                                <label class="col-4 col-form-label">IsSmoke</label> 
                                <div class="col-8">
                                    <select name="isSmoke" class="form-control">
                                  		<option selected value="0">No</option>
										<option value="1">Yes</option>
									</select>
                                 </div>
                              </div>
                               <div class="form-group row">
                                 <div class="offset-8 col-4">
                                  <input value="Edit" class="form-control here" type="submit">
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
							위 안내사항을 모두 확인하였으며, 이에 동의하시면 탈퇴 진행을 위하여 "OUT" 버튼을 눌러주세요.<br><br>
		                </div>
		                <div class="form-group row">
                              <div class="col-md-12">
                              <div class="container">
                                  <input id="deletePassenger" value="Out" class="form-control here" type="button">
                              </div>
                              </div>
                        </div>
		            </div>
		            
		        </div>
		    </div>
		    
		<!-- Delete end -->
		
	</div>
</div>
</div>
<br><br>
