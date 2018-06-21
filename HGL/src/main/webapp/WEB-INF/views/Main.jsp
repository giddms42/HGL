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
body {
 background: url('image/back.png') no-repeat center center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
window.onload = function() {
		var i = 2;
	setInterval(function(){
		$("#label"+i).trigger("click");
		if(i<4){
			i++;
		}else if(i==4){
			i=1;
		}
	}, 3000);
};
</script>
<body>
	<div id="container">
	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	
	<div id="b">
	<br>
		<div class="csslider infinity" id="slider1">
		  <input type="radio" name="slides" checked="checked" id="slides_1"/>
		  <input type="radio" name="slides" id="slides_2"/>
		  <input type="radio" name="slides" id="slides_5"/>
		  <input type="radio" name="slides" id="slides_6"/>
		  <ul>
		    <li>
		    	<div class="list1">1페이지</div>
		    </li>
		    <li>
				<div class="list1">2페이지</div>
			</li>
		    <li>
		    	<div class="list1">3페이지</div>
		    </li>
		    <li>
		    	<div class="list1">4페이지</div>
		    </li>
		  </ul>
		  <div class="arrows">
		    <label for="slides_1"></label>
		    <label for="slides_2"></label>
		    <label for="slides_5"></label>
		    <label for="slides_6"></label>
		    <label class="goto-first" for="slides_1"></label>
		    <label class="goto-last" for="slides_6"></label>
		  </div>
		  <div class="navigation"> 
		    <div>
		      <label for="slides_1" id="label1"></label>
		      <label for="slides_2" id="label2"></label>
		      <label for="slides_5" id="label3"></label>
		      <label for="slides_6" id="label4"></label>
		    </div>
		  </div>
		</div>
	<br><br>
	</div>
	
	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>
</body>
</html>