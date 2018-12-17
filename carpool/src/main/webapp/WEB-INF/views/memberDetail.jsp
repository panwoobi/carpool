<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<body>
	<div class="container">
		<div class="card" id="myInfo">
			<div class="card-body">
				<div class="row">
					<div class="col-md-12">
						<h4>Partner Profile</h4>
						<hr>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<img class="rounded-circle" style=" width: 280px; height: 280px; margin-left: auto; margin-right: auto; display: block;" src="${m.profile }"><br><br>
						<div class="form-group row">
							<label class="col-4 col-form-label">이름</label>
							<div class="col-8">
								<input value="${m.name }" class="form-control here" type="text" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">이메일</label>
							<div class="col-8">
								<input value="${m.email }" class="form-control here" type="text" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">전화번호</label>
							<div class="col-8">
								<input value="${m.tel }" class="form-control here" type="text" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">계정유형</label>
							<div class="col-8">
								<c:choose>
									<c:when test="${m.type eq 0 }">
										<input value="관리자" class="form-control here" type="text" readonly>
									</c:when>
									<c:when test="${m.type eq 1 }">
										<input value="운전자" class="form-control here" type="text" readonly>
									</c:when>
									<c:when test="${m.type eq 2 }">
										<input value="탑승자" class="form-control here" type="text" readonly>
									</c:when>
								</c:choose>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">성별</label>
							<div class="col-8">

								<c:choose>
									<c:when test="${m.sex eq 0}">
										<input value="남성" class="form-control here" type="text" readonly>
									</c:when>

									<c:when test="${m.sex eq 1}">
										<input value="여성" class="form-control here" type="text" readonly>
									</c:when>
								</c:choose>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">흡연여부</label>
							<div class="col-8">
								<c:choose>
									<c:when test="${m.isSmoke eq 0}">
										<input value="N" class="form-control here" type="text" readonly>
									</c:when>

									<c:when test="${m.isSmoke eq 1}">
										<input value="Y" class="form-control here" type="text" readonly>
									</c:when>
								</c:choose>
							</div>
						</div>
						
						<c:if test="${!empty cc}">
						<br><br>
						<div class="form-group row">
							<label class="col-4 col-form-label">Number Plate</label>
							<div class="col-8">
								<input value="${cc.number_plate }" class="form-control here" type="text" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">Mileage</label>
							<div class="col-8">
								<input value="${cc.mileage }" class="form-control here" type="text" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">Age</label>
							<div class="col-8">
								<input value="${cc.age }" class="form-control here" type="text" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">Car Name</label>
							<div class="col-8">
								<input value="${cc.car_name }" class="form-control here" type="text" readonly>
							</div>
						</div>
						<div class="form-group row">
							<label class="col-4 col-form-label">Car Size</label>
							<div class="col-8">
								<c:choose>
									<c:when test="${cc.car_size eq 1}">
										<input value="소형" class="form-control here" type="text" readonly>
									</c:when>
									<c:when test="${cc.car_size eq 2}">
										<input value="중형" class="form-control here" type="text" readonly>
									</c:when>
									<c:when test="${cc.car_size eq 3}">
										<input value="대형" class="form-control here" type="text" readonly>
									</c:when>
								</c:choose>
							</div>
						</div>
						</c:if>
						<form action="${pageContext.request.contextPath }/menu" method="GET">
							<div class="text-center">
								<input type="submit" class="btn btn-outline-primary" value="PartnerList">
							</div>
						</form>				
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>