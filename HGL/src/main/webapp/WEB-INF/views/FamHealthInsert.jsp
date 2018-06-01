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
	<div id="addHealth">
		<h3>${famDto.famName }님의 건강정보 추가</h3>
		<form action="FamHealthInsert.do" method="post" novalidate>
			<div>체중
				<input class="healthInfoAdd" type="number" name="addWeight" placeholder="kg. 체중을 입력해주세요">
			</div>
			<div>혈압
				<input class="healthInfoAdd" type="number" name="systolic" placeholder="수축기를 숫자만 입력해주세요"><br>
				<input class="healthInfoAdd" type="number" name="diastole" placeholder="이완기를 숫자만 입력해주세요" style="margin-left: 35px;">
			</div>
			<div style="margin-top: 10px; ">
				<button>추가하기</button>
				<button type="button" onclick="self.close()">취소하기</button>
			</div>
		</form>
	</div>
</body>
</html>