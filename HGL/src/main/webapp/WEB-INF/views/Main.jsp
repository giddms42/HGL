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
display: -webkit-flex;
	  display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
}

#b1{
	display: flex;
	flex-direction: row;
	width: 800px;
	height: 300px;
}

#b2{
	margin:5px;
	width:100%;
	background-color: orange;
	display: flex;
	flex-direction: column;
}

#b3{
	background-color: green;
	height: 80%;
	display: -webkit-flex;
	  display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
}

#b4{
	height: 20%;
	background-color: yellow;
	display: -webkit-flex;
	  display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
}

html { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
 
 #img1{
 z-index: -1;
 position: absolute;
 opacity: 0.6
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