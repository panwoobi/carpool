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
	  
	});


</script>



<br><br>
<div class="container">
	<div class="row">
		<div class="col-md-3 ">
		     <div class="list-group">
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
                                  <input value="Man" class="form-control here" type="text" readonly>
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
                         
                          
                           
                            </form>
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
		                		<c:choose>
		                			<c:when test="${empty sessionScope.c }">
		                			<h3>There Is No Your Car<br><br>
		                			<a href="#" id="carEnroll">Please Enroll Your Car</a> :(</h3>
		                			</c:when>
		                			<c:otherwise>
						               		 <div class="form-group row">
				                               <label class="col-4 col-form-label">Owner</label> 
				                                <div class="col-8">
				                                  <input value="${sessionScope.m.name }" class="form-control here" type="text" readonly>
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
		                			</c:otherwise>
		                		</c:choose>
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
	
		            
		        </div>
		    </div>
		    
		<!-- Edit end -->
		
		<!-- Delete start -->
		    <div class="card" id="delete">
		        <div class="card-body">
		            <div class="row">
		                <div class="col-md-12">
		                    <h4>Delte Account</h4>
		                    <hr>
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
                                  <input value="${sessionScope.m.name }" class="form-control here" type="text" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">License</label> 
                                <div class="col-8">
                                  <input name="license" class="form-control here" type="text" >
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Number Plate</label> 
                                <div class="col-8">
                                  <input name="number_plate" class="form-control here" type="text">
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Mileage</label> 
                                <div class="col-8">
                                  <input name="number_plate"class="form-control here" type="text" >
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Age</label> 
                                <div class="col-8">
                                  <input name="age" class="form-control here" type="text" >
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Car Name</label> 
                                <div class="col-8">
                                  <input name="car_name" class="form-control here" type="text" >
                                </div>
                            </div>
                            <div class="form-group row">
                               <label class="col-4 col-form-label">Car Size</label> 
                                <div class="col-8">
                                  <input name="car_size" class="form-control here" type="text" >
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
		<br><br>
</div>