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
	width: 100%;
	height: 150px;
	background-color: pink;
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
	background-color: gray;
	display: -webkit-flex;
	display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
}

.menu{
	background-color: orange;
	border: 1px solid white;
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
		<div id="header">
			<div id="up">
				<div class="up2" id="up21">홈버튼 로고</div>
				<div class="up2" id="up22">
					<div id="hgl"><strong>행</strong>복한
					<strong>가</strong>족의
					미<strong>래</strong></div>
				</div>
				<div class="up2" id="up23">xx님 환영합니다</div>
				<div class="up2" id="up24">로그아웃</div>
			</div>
			<div id="down">
				<div class="menu" id="admin" onclick="AdminMange()">관리자</div>
				<div class="menu">홈페이지 소개</div>
				<div class="menu">내정보</div>
				<div class="menu">캘린더</div>
				<div class="menu">지도</div>
				<div class="menu">위시리스트</div>
				<div class="menu">좋은글</div>
			</div>
		</div>

</body>
</html>