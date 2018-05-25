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
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	/* $("#admin").hide(); */
});

function AdminUserInfo(){
	var popupX = (window.screen.width / 2) - (440 / 2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height /2) - (240 / 2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	window.open("AdminUserInfo.do","", 'status=no, width=440, height=220, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}

</script>
<body>

<a href="home.do">home</a><br>
<a href="MemberSignUpForm.do">signUpForm</a><br>
<a href="MemberLoginForm.do">MemberLogin.do</a><br>
<a href="Main.do">Main.do</a><br>
<a href="MemberSearch.do">MemberSearch.do</a><br>
<a onclick="AdminUserInfo()">AdminUserInfo.do</a><br>
<a href="AdminSearchUser.do">AdminSearchUser</a><br>
</body>
</html>