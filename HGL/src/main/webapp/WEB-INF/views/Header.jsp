<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    <%@page import="java.util.Calendar"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/Header.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

function AdminMange(){
	var popupX = (window.screen.width / 2) - (440 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (310 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	window.open("AdminMangeForm.do","", 'width=440, height=310, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
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
		<div id="header2"><img src="image/sadad.png" id="img"></div>
			<div id="up">
				<div class="up2" id="up21"><a href="MainForm.do">홈버튼 로고</a></div>
				<div class="up2" id="up22">
					<div id="hgl"><strong>행</strong>복한
					<strong>가</strong>족의
					미<strong>래</strong></div>
				</div>
				<div class="up2" id="up23">${login.memberNickname} 님 환영합니다</div>
				<div class="up2" id="up24"><a href="memberLoginOut.do">로그아웃</a></div>
			</div>
			<div id="down">
				<div class="menu" id="menu0">
					<div class="col-md-3 col-sm-3 col-xs-6" id="btn"><a href="#" class="btn btn-sm animated-button thar-three" id="btn1">관리자</a></div>
					<div class="hoverAll" id="hoverZero">
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" onclick="AdminMange()" class="btn btn-sm animated-button thar-three sp" id="btn3">회원 제재</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="AdminSearchUserForm.do?nowpage=1" class="btn btn-sm animated-button thar-three sp" id="btn3">회원 목록</a></div>
					</div>
				</div>				
				<div class="menu" id="menu1">
					<div class="col-md-3 col-sm-3 col-xs-6" id="btn"><a href="#" class="btn btn-sm animated-button thar-three" id="btn1">홈페이지 소개</a></div>
					<div class="hoverAll" id="hoverOne">
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">오시는 길</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">가시는 길</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">개리와 길</a></div>
					</div>
				</div>
				
				<div class="menu" id="menu2">
					<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="MemberInfoForm.do?memberNo=${login.memberNo}" class="btn btn-sm animated-button thar-three" id="btn1">내정보</a></div>
					<div class="hoverAll" id="hoverTwo">
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">오시는 길</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">가시는 길</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">개리와 길</a></div>
					</div>
				</div>
				
				<div class="menu" id="menu3">
					<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="CalListForm.do?memberId=${login.memberId }&year=<%=year2 %>&month=<%=month2 %>&memberNickname=${login.memberNickname }" class="btn btn-sm animated-button thar-three" id="btn1">캘린더</a></div>
				</div>
				
				<div class="menu" id="menu4">
					<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="FWLBList.do?nowpage=1" class="btn btn-sm animated-button thar-three" id="btn1">지도</a></div>
					<div class="hoverAll" id="hoverFour">
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="MapHW.do" class="btn btn-sm animated-button thar-three sp" id="btn3">카테고리지도</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="MapK.do" class="btn btn-sm animated-button thar-three sp" id="btn3">착한가게</a></div>
					</div>
				</div>
				
				<div class="menu" id="menu5">
					<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="FWLList.do?memberNo=${login.memberNo}" class="btn btn-sm animated-button thar-three" id="btn1">위시리스트</a></div>
					<div class="hoverAll" id="hoverFive">
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">오시는 길</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">가시는 길</a></div>
						<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three sp" id="btn3">개리와 길</a></div>
					</div>
				</div>
				
				<div class="menu" id="menu6">
					<div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="GGListForm.do?nowpage=1" class="btn btn-sm animated-button thar-three" id="btn1">좋은글</a></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>