<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	$(document).ready(function(){
	  $('.card').hide();
	  $('#myInfo').show();
	  
	  $('.list-group-item').on('click', function(){
		menu = $(this).attr("id");
	  	if(menu=="1"){
	  	  $('.card').hide();
	  	  $('#myInfo').show();
	  	}
	  	if(menu=="2"){
	  	  $('.card').hide();
	  	  $('#partner').show();
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
									<input type="submit"  class="btn btn-link" id="profileCommit" value="Save" style="float:right;">
									</form>
							</div>
						</div>
			  
              <h5>MENU</h5>
              <a href="#" id="1" class="list-group-item list-group-item-action">My Info</a>
              <a href="#" id="2" class="list-group-item list-group-item-action">Partner</a>
              <a href="#" id="3" class="list-group-item list-group-item-action">Car</a>
              <a href="#" id="4" class="list-group-item list-group-item-action">Edit My Info</a>
              <a href="#" id="5" class="list-group-item list-group-item-action">Delete My Account</a>
            </div> 
		</div>
		<div class="col-md-9">

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
                                <label class="col-4 col-form-label">User Name</label> 
                                <div class="col-8">
                                  <input value="${sessionScope.m.name }" class="form-control here" type="text" readonly>
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User ID</label> 
                                <div class="col-8">
                                  <input value="${sessionScope.m.id }" class="form-control here" type="text" readonly>
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User Email</label> 
                                <div class="col-8">
                                  <input value="${sessionScope.m.email }" class="form-control here" type="text" readonly>
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User Tel</label> 
                                <div class="col-8">
                                  <input value="${sessionScope.m.tel }" class="form-control here" type="text" readonly>
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User Type</label> 
                                <div class="col-8">
                                  <input value="Driver" class="form-control here" type="text" readonly>
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
		                			<h3>There Is No Your Car<br><br>
		                			<a href="#" id="carEnroll">Please Enroll Your Car</a> :(</h3>
		                			</c:when>
		                			<c:otherwise>
						               		 <div class="form-group row">
				                               <label class="col-4 col-form-label">Owner</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.m.id }" class="form-control here" type="text" readonly>
				                                </div>
				                            </div>
				                            <div class="form-group row">
				                               <label class="col-4 col-form-label">License</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.c.license }" class="form-control here" type="text" readonly>
				                                </div>
				                            </div>
				                            <div class="form-group row">
				                               <label class="col-4 col-form-label">Number Plate</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.c.number_plate }" class="form-control here" type="text" readonly>
				                                </div>
				                            </div>
				                            <div class="form-group row">
				                               <label class="col-4 col-form-label">Mileage</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.c.mileage }" class="form-control here" type="text" readonly>
				                                </div>
				                            </div>
				                            <div class="form-group row">
				                               <label class="col-4 col-form-label">Age</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.c.age }" class="form-control here" type="text" readonly>
				                                </div>
				                            </div>
				                            <div class="form-group row">
				                               <label class="col-4 col-form-label">Car Name</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.c.car_name }" class="form-control here" type="text" readonly>
				                                </div>
				                            </div>
				                            <div class="form-group row">
				                               <label class="col-4 col-form-label">Car Size</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.c.car_size }" class="form-control here" type="text" readonly>
				                                </div>
				                            </div>
				                             <div class="form-group row">
                                				 <div class="offset-8 col-4">
                                  					<input value="DELETE" class="form-control here" type="submit">
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
		
		<!-- partner start -->
		    <div class="card" id="partner">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Your Partner</h4>
		                    <hr>
		                </div>
		            </div>
	
		            
		        </div>
		    </div>
		    
		<!-- partner end -->
		
		
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
                                  <input name="name" class="form-control here" type="text" value="${sessionScope.m.name }" required oninvalid="this.setCustomValidity('닉네임을 입력하세요')" oninput="setCustomValidity('')">
                                </div>
                              </div>

                                <div class="form-group row">
                                <label class="col-4 col-form-label">User Password</label> 
                                <div class="col-8">
                                  <input name="pw" class="form-control here" type="password" value="${sessionScope.m.pw }"required oninvalid="this.setCustomValidity('password를 입력하세요')" oninput="setCustomValidity('')" >
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User Email</label> 
                                <div class="col-8">
                                  <input name="email" class="form-control here" type="email" value="${sessionScope.m.email }" required oninvalid="this.setCustomValidity('email을 입력하세요')" oninput="setCustomValidity('')">
                                </div>
                              </div>
                               <div class="form-group row">
                                <label class="col-4 col-form-label">User Tel</label> 
                                <div class="col-8">
                                  <input name="tel" class="form-control here" type="text" value="${sessionScope.m.tel }" required oninvalid="this.setCustomValidity('연락처를 입력하세요')" oninput="setCustomValidity('')">
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
		                    Once you delete your account, there is no going back. Please be certain.<br>
							All Information you write will be remove.<br><br>
							Confirm your password<br><br>
							<input type="password" id="deletePwd" placeholder="Password"><br><br>
							If you conform notice, please click the "OUT" button<br><br>
		                </div>
		                <div class="form-group row">
                              <div class="col-md-12">
                              <div class="container">
                                  <input id="deleteDriver" value="Out" class="form-control here" type="button">
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
                               <label class="col-4 col-form-label">Owner</label> 
                                <div class="col-8">
                                  <input value="${sessionScope.m.id }" name="owner" class="form-control here" type="text" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">License</label> 
                                <div class="col-8">
                                  <input name="license" class="form-control here" type="password" required oninvalid="this.setCustomValidity('Licence번호를 입력하세요')" oninput="setCustomValidity('')" >
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Number Plate</label> 
                                <div class="col-8">
                                  <input name="number_plate" class="form-control here" type="text" required oninvalid="this.setCustomValidity('number plate를 입력하세요')" oninput="setCustomValidity('')">
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Mileage</label> 
                                <div class="col-8">
                                  <input name="mileage"class="form-control here" type="text" required oninvalid="this.setCustomValidity('마일리지를 입력하세요')" oninput="setCustomValidity('')">
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Age</label> 
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
                               <label class="col-4 col-form-label">Car Name</label> 
                                <div class="col-8">
                                  <input name="car_name" class="form-control here" type="text" required oninvalid="this.setCustomValidity('차 종을 입력하세요')" oninput="setCustomValidity('')">
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Car Size</label> 
                                <div class="col-8">
                                    <select name="car_size" class="form-control">
                                  		<option selected value="1">Small</option>
										<option value="2">Medium</option>
										<option value="2">Large</option>
									</select>
                                </div>
                            </div>
                            <div class="form-group row">
                                 <div class="offset-8 col-4">
                                  <input value="Enroll" class="form-control here" type="submit">
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
		<br><br>
