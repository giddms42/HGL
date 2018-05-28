<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login.jsp</title>
</head>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	/* $("#admin").hide(); */
});

function MemberSearch(){
	var popupX = (window.screen.width/2)-(440/2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height/2)-(240/2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	window.open("MemberSearch.do","", 'status=no, width=440, height=240, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}

</script>

<style>

#container{
	margin: auto;
	width: 1280px;
	height: 100%;
	/* background-color: orange; */
}

#a{
width: 100%;
/* background-color: red; */
}

#c{
width: 100%;
/* background-color: green; */
}

#b{
color: white;
border: 1px dashed red;
height: 500px;
width: 100%;
}

#b1{
float: left;
height: 150px;
width: 20%;
margin-top: 15%;
margin-left: 40%;
margin-right: 40%;
}

#b2{
width: 100%;
height: 100%;
display: table;
opacity: 1;
}

#b3{
display:table-cell;
vertical-align: middle;
}


html { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
 
 #im1{
 z-index: -1;
 position: absolute;
 width: 256px;
 height: 150px;
 opacity: 0.5
 }


</style>
<body>
	<div id="container">
	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	
	<div id="b">
		<div id="b1">
			<div>
			<img src="image/back.png" id="im1">
			</div>
			<form action="login.do" id="b2">
				<input type="hidden" name="command" value="login" />
				<div id="b3">
				<table align="center">
					<!-- <caption>로그인</caption> -->
					<tr>
						<td>ID</td>
						<td><input type="text" name="id" id="inpid"></td>
					</tr>
					<tr>
						<td>PW</td>
						<td><input type="password" name="pw" id="inppw"></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="button" value="로그인" onclick="">
		                <input type="button" value="ID / PW 찾기" onclick="MemberSearch()">
					    <input type="button" value="회원가입" onclick="">
					</td>
					</tr>
				</table>
				</div>
			</form>
		</div>
	</div>
	
	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>
</body>
</html>