<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>건강정보 추가</title>
<link rel="stylesheet" type="text/css" href="css/FamHealthInsert.css">
</head>
<body>
	<h3>OOO님의 건강정보 추가</h3>
	<div id="addHealth">
		<form action="FamHealthInsert.do" method="post" novalidate>
			<div>체중<br>
				<input type="text" name="addWeight" placeholder="kg. 체중을 입력해주세요">
			</div>
			<div>혈압<br>
				<input type="text" name="systolic" placeholder="수축기를 숫자만 입력해주세요"><br>
				<input type="text" name="diastole" placeholder="이완기를 숫자만 입력해주세요">
			</div>
			<span>
				<input type="submit" value="추가하기">
				<input type="button" value="취소하기" onclick="">
			</span>
		</form>
	</div>
</body>
</html>