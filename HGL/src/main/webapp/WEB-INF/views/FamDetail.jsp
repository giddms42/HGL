<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/FamDetail.css">
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script src="js/FChart.js"></script>
<script type="text/javascript">
function goDiseaseUpdate(){
 	var popupX = (window.screen.width/2)-(250 /2);
	var popupY= (window.screen.height/2)-(50 /2);

	window.name="Parent";
	window.open("FamDiseaseUpdateForm.do?famNo="+${famDto.famNo},"", 'status=no, width=450, height=200, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}

function goHealthInfoAdd(){
 	var popupX = (window.screen.width/2)-(410/2);
	var popupY= (window.screen.height/2)-(240/2); 
	window.name="Parent";
	window.open("FamHealthInsertForm.do?famNo="+${famDto.famNo},"", 'status=no, width=410, height=240, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}

function showMenu(disea){
	var popupX = (window.screen.width/2)-(410/2);
	var popupY= (window.screen.height/2)-(240/2); 
	window.name="Parent";
	window.open("FamDiseaseMenu.do?disease="+disea,"", 'status=no, width=410, height=240, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}


google.charts.load('current', {'packages':['line']});
google.charts.setOnLoadCallback(drawChart);
</script>
</head>
<body>
		<div id="detail">
		    <header>
				<h2>${famDto.famName} 님의 정보</h2>
			</header>
	
			<div id="famDetail" style="display: flex; ">

				<div id="famInfoFom">
					<input type="hidden" id="famNo" value="${famDto.famNo}">
					<div>이름
						<input class="famInfo" type="text" value="${famDto.famName}" readonly="readonly">
					</div>
					<div>생일
						<input class="famInfo" type="text" value="${year}년 ${month}월 ${day}일" readonly="readonly">
					</div>
					<div>신장
						<input class="famInfo" type="text" value="${famDto.famHeight}cm" readonly="readonly">
					</div>
					<div>체중
					<c:choose>
						<c:when test="${empty healthDto.healthWeight}">
							<input class="famInfo" type="text" value="등록된 체중이 없습니다." readonly="readonly">
						</c:when>
						<c:otherwise>
							<input class="famInfo" type="text" value="${healthDto.healthWeight}kg" readonly="readonly">
						</c:otherwise>
					</c:choose>
					</div>
					<div>혈압
					<c:choose>
						<c:when test="${empty healthDto.healthShrbp}">
							<input class="famInfo" type="text" value="등록된 혈압이 없습니다." readonly="readonly">
						</c:when>
						<c:otherwise>
							<input class="famInfo" type="text" value="${healthDto.healthShrbp}mg" readonly="readonly">
						</c:otherwise>
					</c:choose>
							<p style="margin-top: -20px; margin-left: 38px;">
					<c:choose>
						<c:when test="${empty healthDto.healthRelbp}">
							<input class="famInfo" type="text" value="등록된 혈압이 없습니다." readonly="readonly">
						</c:when>
						<c:otherwise>
							<input class="famInfo" type="text" value="${healthDto.healthRelbp}mg" readonly="readonly">
						</c:otherwise>
					</c:choose>	
					</div>
					<div>지병 항목 (최대 3개) <input type="button" value="변경하기" onclick="goDiseaseUpdate()"></div>
					<c:choose>
						<c:when test="${famDto.famDisease1 eq '질병없음'}">
						</c:when>
						<c:otherwise>
						<div style="margin-left: 20px;">
						지병1<input class="disease" type="text" value="${famDto.famDisease1}">
						<input type="button" value="추천식단" onclick="showMenu('${famDto.famDisease1}');">
						</div>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${famDto.famDisease2 eq '질병없음'}">
						</c:when>
						<c:otherwise>
						<div style="margin-left: 20px;">
						지병2<input class="disease" type="text" value="${famDto.famDisease2}">
						<input type="button" value="추천식단" onclick="showMenu('${famDto.famDisease2}');">
						</div>
						</c:otherwise>
					</c:choose>
					
					<c:choose>
						<c:when test="${famDto.famDisease3 eq '질병없음'}">
						</c:when>
						<c:otherwise>
						<div style="margin-left: 20px;">
						지병3<input class="disease" type="text" value="${famDto.famDisease3}">
						<input type="button" value="추천식단" onclick="showMenu('${famDto.famDisease3}');">
						</div>
						</c:otherwise>
					</c:choose>
				</div>
					<div id="graph"></div>
			</div>
			<div style="margin-top:100px;  margin-bottom:50px; text-align: center;">
			<button type="button" onclick="goHealthInfoAdd();">정보추가</button>
			<button type="button" onclick="location.href='MemberInfoForm.do?memberNo='+${famDto.memberNo}">목록으로</button>
			</div>
		</div>

			<c:forEach items="${list}" var="healthDto" varStatus="status">
			<input type="hidden" name="health" id="dto${status.index}ShrBP" value="${healthDto.healthShrbp}" />
			<input type="hidden" name="health" id="dto${status.index}RelBP" value="${healthDto.healthRelbp}" />
			<input type="hidden" name="health" id="dto${status.index}Weigth" value="${healthDto.healthWeight}" />
			</c:forEach>
	
</body>
</html>