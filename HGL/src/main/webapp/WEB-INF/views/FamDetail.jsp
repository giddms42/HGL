<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/FamDetail.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="js/FChart.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages':['line']});
google.charts.setOnLoadCallback(drawChart);
</script>
</head>
<body>
	<div>
		<div id="detail">
		    <header>
				<h3>${famDto.famName}님</h3>
			</header>
			
			<form id="regist" action="MemberSignUp.do" method="post" class="userForm" novalidate>
			<div id="famInfoFom">
					<div>이름
						<input class="famInfo" type="text" value="${famDto.famName}"  readonly="readonly">
					</div>
					<div>생일
						<input class="famInfo" type="text" value="${famDto.famBirth}" readonly="readonly">
					</div>
					<div style="margin-top: -30px; margin-left: 60px;">
						<label><input class="radi" type="text" value="${famDto.famLunar}" readonly="readonly">
					</div>
					<div>신장
						<input class="famInfo" type="text" value="${famDto.famHeight}" readonly="readonly">
					</div>
					<div>체중
						<input class="famInfo" type="text" value="weight" readonly="readonly">
					</div>
					<div>혈압
						<input class="famInfo" type="text" value="systolic+mg" readonly="readonly">
						<p style="margin-top: -20px; margin-left: 38px;">
						<input class="famInfo" type="text" value="diastole+mg" readonly="readonly">
						</p>
					</div>
					
					<div>지병 항목 (최대 3개) <input type="button" value="변경하기"></div>
					
					<c:choose>
						<c:when test="${famDto.famDisease1 eq '질병없음'}">
						</c:when>
						<c:otherwise>
						<div style="margin-left: 20px;">
						지병1<input class="disease" type="text" value="${famDto.famDisease1}">
						<input type="button" value="추천식단">
						</div>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${famDto.famDisease2 eq '질병없음'}">
						</c:when>
						<c:otherwise>
						<div style="margin-left: 20px;">
						지병1<input class="disease" type="text" value="${famDto.famDisease2}">
						<input type="button" value="추천식단">
						</div>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${famDto.famDisease3 eq '질병없음'}">
						</c:when>
						<c:otherwise>
						<div style="margin-left: 20px;">
						지병1<input class="disease" type="text" value="${famDto.famDisease3}">
						<input type="button" value="추천식단">
						</div>
						</c:otherwise>
					</c:choose>
					
					<!--  	
					<div style="margin-left: 20px;">
						지병2<input class="disease" type="text" value="당뇨병">
						<input type="button" value="추천식단">
					</div>
					<div style="margin-left: 20px;">
						지병3<input class="disease" type="text" value="당뇨병">
						<input type="button" value="추천식단">
					</div>
					-->
				</div>
			</form>
			<div id="graph"></div>
		</div>
     </div> 
</body>
</html>