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
<script type="text/javascript">
function goSubmit(){
	window.opener.name = "Parent"; // 부모창의 이름 설정
    document.myForm.target = "Parent"; // 타켓을 부모창으로 설정
    self.close();
}
</script>
</head>
<body>
	<h3>${famDto.famName}님의 건강정보 추가</h3>
	<div id="addHealth">
		<form action="FamHealthInsert.do" method="post" name="myForm">
			<input type="hidden" name="famNo" value="${famDto.famNo}">
			<input type="hidden" name="memberNo" value="${famDto.memberNo}">
			<div>체중<br>
				<input type="text" name="healthWeight" placeholder="kg. 체중을 입력해주세요">
			</div>
			<div>혈압<br>
				<input type="text" name="healthShrbp" placeholder="수축 혈압을 숫자만 입력해주세요"><br>
				<input type="text" name="healthRelbp" placeholder="이완 혈압을 숫자만 입력해주세요">
			</div>
			<span>
				<input type="submit" value="추가하기" onclick="goSubmit()">
				<input type="button" value="취소하기" onclick="self.close()">
			</span>
		</form>
	</div>
</body>
</html>