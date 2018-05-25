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

html { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
 
 #bodyMain{
 	position: relative;
 	width: 98%;
 	height: 95%;
 	display: -webkit-flex;
	  display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
 }
 
 #content{
 	z-index: -1;
 	position: absolute;
 	width: 100%;
 	height: 100%;
 	opacity: 0.7;
 }
 .ab{
 }
 
 th{
 	font-weight:bold;
 	font-size: 13pt;
 }
 
 td{
 	text-align: center;
		border: 1px solid white;

 }
 
 table{
 	background-color: orange;
 	width:80%;
 }
 


</style>
<body>

	<div id="container">
	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	
	<div id="b">
		<div id="bodyMain">
			<img src="image/sadad.png" id="content">
					<table border="1" bordercolor="white">
						<col width="50" class="ab">
						<col width="150">
						<col width="150">
						<col width="300">
						<col width="70">
						<tr onclick="javascript:opener.location.href='Main.do';self.close();">
							<th>번호</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>이메일</th>
							<th>제재횟수</th>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
						<tr>
							<td class="div2" id="ans">1</td>
							<td class="div1" id="res">chlwjdgus</td>
							<td class="div1" id="res">정현이</td>
							<td class="div1" id="res">chljh90@gmail.com</td>
							<td class="div1" id="res">0</td>
						</tr>
					</table>
		</div>
	</div>
	
	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>