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
	
	.div3{
		width: 100%
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
		height: 290px;
	}
	
	.btn{
		width: 100%;
		height: 100%;
	}
	
	b{
		color: white;
	}
</style>
<body>

	<div id="container">
		<div>
		<div id="cover">
			<div><b>회원 제재</b></div>
			<div id="div0">
				<div class="div2"><input type="text" id="input" placeholder="ID를 입력해주세요."></div>
				<div class="div1"><input type="button" value="회원 제재" class="btn"></div>
			</div>
			<div id="div0">
				<div class="div3"><input type="text" id="input" placeholder="제재 성공 여부 표시 / ex) 30일 글작성 정지" readonly="readonly"></div>
			</div>
		</div>
			<br/>
			<div id="cover">
			<div><div><b>회원 추방</b></div></div>
			<div id="div0">
				<div class="div2"><input type="text" id="input" placeholder="ID를 입력해주세요."></div>
				<div class="div1"><input type="button" value="회원 추방" class="btn"></div>
			</div>
			<div id="div0">
				<div class="div3"><input type="text" id="input" placeholder="회원 추방 성공 여부 표시" readonly="readonly"></div>
			</div>
		</div>
		<br/>
		<div id="cover">
			<div><div><b>제재 해제</b></div></div>
			<div id="div0">
				<div class="div2"><input type="text" id="input" placeholder="ID를 입력해주세요."></div>
				<div class="div1"><input type="button" value="제재 해제" class="btn"></div>
			</div>
			<div id="div0">
				<div class="div3"><input type="text" id="input" placeholder="제재 해제 성공 여부 표시" readonly="readonly"></div>
			</div>
		</div>
		</div>
	</div>

</body>
</html>