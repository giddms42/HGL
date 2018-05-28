<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style>

#header{
	position: relative;
	width: 100%;
	height: 150px;
	color: white;
}

#up{
display: -webkit-flex;
	display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
	height: 65%;
	background-color: red;
}

#down{
	height: 35%;
	display: -webkit-flex;
	display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
}

.menu{
	width: 10%;
	height: 100%;
	display: -webkit-flex;
	display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
}

.up2{
	display: -webkit-flex;
	display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
	height: 100%;
	background-color: yellow;
	color: black;
	border: 1px solid green;
}

#up21{
	width: 10%;
}
#up22{
	width: 60%;
	font-size: 20pt;
	color: green;
}
#up23{
	width: 20%;
}
#up24{
	width: 10%;
}

strong{
	font-size: 20pt;
	color: orange;
}

#hgl{
	margin-left: 37%;
}

#admin{
	display: flex;
	flex-direction: column;
}

@import url(https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css);

body{
    font-family: 'Lato', sans-serif;
    /* background: #353535; /* 헤더 백그라운드 색깔 */
    /* color: #FFF; */
}

/* Thar Buttons */
a.animated-button.thar-three {
    color: #FFF;
    cursor: pointer;
    display: block;
    position: relative;
    border: 2px solid #F7CA18;
    transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
0s;
}
a.animated-button.thar-three:hover {
    color: #000 !important;
    background-color: transparent;
    text-shadow: nthree;
}
a.animated-button.thar-three:hover:before {
    left: 0%;
    right: auto;
    width: 100%;
}
a.animated-button.thar-three:before {
    display: block;
    position: absolute;
    top: 0px;
    right: 0px;
    height: 100%;
    width: 0px;
    z-index: -1;
    content: '';
    color: #000 !important;
    background: #F7CA18;
    transition: all 0.4s cubic-bezier(0.42, 0, 0.58, 1);
0s;
}

#btn{
	width: 95%;
}

#btn2{
	font-weight:bold;
	text-align: center;
	text-decoration: none;
	height: 24px;
}

#header2{
	z-index: -1;
	height: 150px;
	width: 100%;
	position: absolute;
}

img{
	height: 100%;
	width: 100%;
	opacity: 0.6;
	z-index: -10;
}


</style>

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

function AdminMange(){
	var popupX = (window.screen.width / 2) - (740 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (340 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	window.open("AdminMange.do","", 'width=435, height=310, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}

</script>

<body>
	<div>
		<div id="header">
		<div id="header2"><img src="image/sadad.png"></div>
			<div id="up">
				<div class="up2" id="up21"><a href="Main.do">홈버튼 로고</a></div>
				<div class="up2" id="up22">
					<div id="hgl"><strong>행</strong>복한
					<strong>가</strong>족의
					미<strong>래</strong></div>
				</div>
				<div class="up2" id="up23">xx님 환영합니다</div>
				<div class="up2" id="up24"><a href="MemberLoginForm.do">로그아웃</a></div>
			</div>
			<div id="down">
				<div class="menu" id="admin">
					<div onclick="AdminMange()">관리자-회원제재</div>
					<div onclick="location.href='AdminSearchUser.do'">관리자-회원목록</div>
				</div>
				<div class="menu"><div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three" id="btn2">홈페이지 소개</a></div></div>
				<div class="menu"><div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three" id="btn2">내정보</a></div></div>
				<div class="menu"><div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three" id="btn2">캘린더</a></div></div>
				<div class="menu"><div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three" id="btn2">지도</a></div></div>
				<div class="menu"><div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three" id="btn2">위시리스트</a></div></div>
				<div class="menu"><div class="col-md-3 col-sm-3 col-xs-6" id="btn"> <a href="#" class="btn btn-sm animated-button thar-three" id="btn2">좋은글</a></div></div>
			</div>
		</div>
	</div>
</body>
</html>