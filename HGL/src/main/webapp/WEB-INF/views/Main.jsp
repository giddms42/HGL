<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Main.jsp</title>
</head>
<link rel="stylesheet" type="text/css" href="css/Main.css">
<style>
html { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

</script>
<body>
	<div id="container">
	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	
	<div id="b">
		<div id="b1">
		<div id="img1"><img src="image/sadad.png"></div>
			<div id="b2">
				<div id="b3">위에꺼</div>
				<div id="b4"><a href="">아래꺼</a></div>
			</div>
			<div id="b2">
				<div id="b3">위에꺼</div>
				<div id="b4"><a href="">아래꺼</a></div>
			</div>
			<div id="b2">
				<div id="b3">위에꺼</div>
				<div id="b4"><a href="">아래꺼</a></div>
			</div>
			<div id="b2">
				<div id="b3">위에꺼</div>
				<div id="b4"><a href="">아래꺼</a></div>
			</div>
		</div>
	</div>
	
	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>
</body>
</html>