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
<link rel="stylesheet" type="text/css" href="css/MemberInfo.css">
<style>
html { /* background: url("image/img.jpg") no-repeat center fixed; */
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
	
		<div id="allInfo">
			<div class="userInfo">
				<h2>회원정보</h2>
				<ul>
					<li>아이디<input class="info" type="text" value="memberId" readonly="readonly"></li>
					<li>닉네임<input class="info" type="text" value="memberNickname" readonly="readonly"></li>
					<li>연락처<input class="info" type="text" value="memberphone" readonly="readonly"></li>
					<li class="smsChk"><input class="smsChk" style="width:5%" type="checkbox" value="" readonly="readonly">문자알림을 받으시겠습니까?</li>
					<li>이메일<input class="info" type="text" value="memberEmail" readonly="readonly"></li>
					<li>주&nbsp&nbsp&nbsp소<input class="info" type="text" value="memberId" readonly="readonly"></li>
				</ul>
			</div>
			<div class="famInfo">
				<h2>가족정보</h2>
				<span id="fam">
					<input class="famMember" type="text" value="famName" readonly="readonly" onclick="window.open('http://www.naver.com','naver','width=600,height=900,location=no,status=no,scrollbars=yes');">님
					<input type="button" value="정보추가" style="margin-left: 10px;"
					onclick="window.open('http://www.naver.com','naver','width=600,height=500,location=no,status=no,scrollbars=yes');">
					<input type="button" value="삭제" style="margin-left: 5px;"
					onclick="">
				</span>
			</div>
		</div>
		<div class="threeButton">
			<input type="button" value="탈퇴하기" style="margin-left: 1.5%">
			<input type="button" value="수정하기" style="margin-left: 37%">
			<input type="button" value="가족추가" style="margin-left: 36.5%">
		</div>

	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>