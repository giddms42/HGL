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
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
var list = document.getElementById("list").value;
alert(list.length);
google.charts.load('current', {'packages':['line']});
google.charts.setOnLoadCallback(drawChart(list));
</script>
</head>
<body>
		<div id="detail">
			<input type="hidden" id="list" value="${healthList}">
		    <header>
				<h2>${famDto.famName}님의 정보</h2>
			</header>
			
			<div id="famDetail">
				<div id="famInfoFom">
					<div>이름
						<input class="famInfo" type="text" value="${famDto.famName}님" readonly="readonly">
					</div>
					<div>생일
						<input class="famInfo" type="text" value="${famDto.famBirth } (${famDto.famLunar})" readonly="readonly">
					</div>
					<div>신장
						<input class="famInfo" type="text" value="${famDto.famHeight}cm" readonly="readonly">
					</div>
					<div>체중
						<input class="famInfo" type="text" value="${healthDto.healthWeight}kg" readonly="readonly">
					</div>
					<div>혈압
						<input class="famInfo" type="text" value="${healthDto.healthShrbp}mg" readonly="readonly">
						<p style="margin-top: -20px; margin-left: 38px;">
						<input class="famInfo" type="text" value="${healthDto.healthRelbp}mg" readonly="readonly"></p>
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
				</div>
			<div id="graph"></div>
			</div>
		</div> 
</body>
</html>