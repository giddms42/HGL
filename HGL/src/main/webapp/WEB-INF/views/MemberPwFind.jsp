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
<link rel="stylesheet" type="text/css" href="css/MemberPwFind.css">
<body>

	<div id="container">
		<div>
		<div id="cover">
			<div><div><b>비밀번호 변경</b></div></div><br/>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="비밀번호 입력" class="input"></div>
				<div class="div2"><input type="text" class="input" placeholder="비밀번호를 입력해주세요." id="email1"></div>
				<div class="div3"><input type="text" class="input" placeholder="O or X" readonly="readonly" id="idVal"></div>
			</div>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="비밀번호 재입력" class="input"></div>
				<div class="div2"><input type="text" class="input" placeholder="비밀번호를 재입력해주세요." id="email1"></div>
				<div class="div3"><input type="text" class="input" placeholder="T or F" readonly="readonly" id="idVal"></div>
			</div>
			<br/>
			<div id="div0">
				<div class="div4"><input type="button" value="비밀번호 변경완료" class="btn" onclick="PwChange();"></div>
			</div>
		</div>
		</div>
	</div>

</body>
</html>