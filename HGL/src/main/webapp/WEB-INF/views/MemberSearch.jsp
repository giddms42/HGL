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
	
	.td1{
		background-color: gray;
	}
	
	.td2{
		background-color: tomato;
	}
	
	#div0{
		width: 400px;
		display: flex;
	}
	
	.div1{
		width: 30%;
	}
	
	.div2{
		background-color: tomato;
		width: 70%;
	}
	
	#cover{
	text-align: center;
	width: 400px;
	}
	
	#input{
		text-align: center;
		width: 98%;
	}
	
	#input2{
		text-align: center;
		width: 99%;
	}
	
	#container{
	display: -webkit-flex;
	display:         flex;
	  -webkit-align-items: center;
	          align-items: center;
	  -webkit-justify-content: center;
	          justify-content: center;
	    background-color: tomato;
		width: 420px;
		height: 220px;
	}
	
	.btn{
		width: 100%;
		height: 100%;
	}
</style>

<body>

	<div id="container">
		<div>
		<div id="cover">
			<div><input type="text" readonly="readonly" value="ID 찾기" id="input2"></div>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="E-Mail" id="input"></div>
				<div class="div2"><input type="text" id="input" placeholder="E-Mail을 입력해주세요."></div>
			</div>
			<div id="div0">
				<div class="div2"><input type="text" id="input" placeholder="결과가 출력됩니다." readonly="readonly"></div>
				<div class="div1"><input type="button" value="ID 찾기" class="btn"></div>
			</div>
		</div>
			<br/>
		<div id="cover">
			<div><input type="text" readonly="readonly" value="PW 찾기" id="input2"></div>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="E-Mail" id="input"></div>
				<div class="div2"><input type="text" id="input" placeholder="E-Mail을 입력해주세요."></div>
			</div>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="ID" id="input"></div>
				<div class="div2"><input type="text" id="input" placeholder="ID를 입력해주세요."></div>
			</div>
			<div id="div0">
				<div class="div2"><input type="text" id="input" placeholder="결과가 출력됩니다." readonly="readonly"></div>
				<div class="div1"><input type="button" value="PW 찾기" class="btn"></div>
			</div>
		</div>
		</div>
	</div>

</body>
</html>