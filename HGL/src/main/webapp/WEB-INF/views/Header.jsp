<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    <%@page import="java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/Header.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

function AdminMange(){
	var popupX = (window.screen.width / 2) - (460 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (350 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	window.open("AdminMangeForm.do","", 'width=460, height=350, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
$(function(){
	   $("#menu0 #hoverZero").css("display","none");

	   $("#menu0").hover(function(){
	    	$("#hoverZero").stop().fadeToggle(400)});
	   
	});
	
$(function(){
	   $("#menu1 #hoverOne").css("display","none");

	   $("#menu1").hover(function(){
	    	$("#hoverOne").stop().fadeToggle(400)});
	   
	});
	
$(function(){
	   $("#menu2 #hoverTwo").css("display","none");

	    $("#menu2").hover(function(){
	    	$("#hoverTwo").stop().fadeToggle(400)});
	   
	});
	
$(function(){
	   $("#menu3 #hoverSam").css("display","none");

	   $("#menu3").hover(function(){
	    	$("#hoverSam").stop().fadeToggle(400)});
	   
	});
	
$(function(){
	   $("#menu4 #hoverFour").css("display","none");

	   $("#menu4").hover(function(){
	    	$("#hoverFour").stop().fadeToggle(400)});
	   
	});
	
$(function(){
	   $("#menu5 #hoverFive").css("display","none");

	   $("#menu5").hover(function(){
	    	$("#hoverFive").stop().fadeToggle(400)});
	   
	});
	
$(function(){
	   $("#menu6 #hoverSix").css("display","none");

	   $("#menu6").hover(function(){
	    	$("#hoverSix").stop().fadeToggle(400)});
	   
	});

</script>

<body>
<%
Calendar cal2 =Calendar.getInstance();
//현재 년도
int year2 = cal2.get(Calendar.YEAR);
//현재 월 (0~11)
int month2 = cal2.get(Calendar.MONTH)+1;
%>
	<div>
		<div id="header">
			<div id="up">
				<div class="up2" id="up21"><a id="homebtn" href="MainForm.do"><img id="homeimg" alt="" src="image/homebtn.jpg"></a></div>
				<div class="up2" id="up22">
					<div id="hgl"><strong>행</strong>복한
					<strong>가</strong>족의
					미<strong>래</strong></div>
				</div>
				
						<div class="up2" id="up23"></div>
			</div>

			<div id="down">
				<nav class="navbar navbar-inverse">
				  <div class="container">
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>                        
				      </button>
				    </div>
				    <div class="collapse navbar-collapse" id="myNavbar">
				      <ul class="nav navbar-nav">
				      	<c:if test="${login.memberRole eq 'ADMIN'}">
							<li class="dropdown">
					          <a class="dropdown-toggle" data-toggle="dropdown" href="#">관리자 <span class="caret"></span></a>
					          <ul class="dropdown-menu">
					            <li><a href="#" onclick="AdminMange();">회원 제재</a></li>
					            <li><a href="AdminSearchUserForm.do?nowpage=1">회원 목록</a></li>
					          </ul>
					        </li>				
						</c:if>
				        <li><a href="MemberInfoForm.do?memberNo=${login.memberNo}">프로필</a></li>
				        <li><a href="CalListForm.do?memberId=${login.memberId }&year=<%=year2 %>&month=<%=month2 %>&memberNickname=${login.memberNickname }">캘린더</a></li>
				        <li class="dropdown">
				          <a class="dropdown-toggle" data-toggle="dropdown" href="#">지도 <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="MapHW.do">카테고리 지도</a></li>
				            <li><a href="MapK.do">착한 가게</a></li>
				            <li><a href="http://www.safemap.go.kr/main/smap.do?flag=2" target="_blank">생활안전지도</a></li>
				          </ul>
				        </li>
				        <li class="dropdown">
				          <a class="dropdown-toggle" data-toggle="dropdown" href="#">위시리스트 <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="FWLList.do?memberNo=${login.memberNo}">내 위시리스트</a></li>
				            <li><a href="FWLBList.do?nowpage=1">공유 게시판</a></li>
				          </ul>
				        </li>
				        <li><a href="GGListForm.do?nowpage=1">좋은글</a></li>
				      </ul>
				      <ul class="nav navbar-nav navbar-right">
				     	 <c:choose>
								<c:when test="${login != null}">
								<li><a href="#"><span class="glyphicon glyphicon-heart"></span> ${login.memberNickname} 님 접속중</a></li>
					     		    <li><a href="memberLoginOut.do"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
								</c:when>	
						</c:choose>
				      </ul>
				    </div>
				  </div>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>