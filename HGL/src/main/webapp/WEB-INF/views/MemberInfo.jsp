<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/MemberInfo.css">
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

function goUpdate(){
	location.href="MemberInfoUpdateForm.do";
}
function goFamDetail(famNo){
	location.href="FamDetailForm.do?famNo="+famNo;
}
function getOut(){
	swal({
	  title: "탈퇴하시겠습니까?",
	  icon: "warning",
	  buttons: ["취소","확인"],
	  dangerMode: true,
	})
	.then((willDelete) => {
		if (willDelete) {
			location.href="MemberGetOut.do?memberNo="+${dto.memberNo};
		}
	});
};
	
 
function goSubmit(){
	window.opener.name = "Parent"; // 부모창의 이름 설정
    document.myForm.target = "Parent"; // 타켓을 부모창으로 설정
    self.close();
}

function goFamInsert(){
	location.href="FamInsertForm.do";
}

function famDelete(famNo){
	var fam_Delete = confirm("삭제하시겠습니까?");
	if(fam_Delete == true){
		location.href="FamDelete.do?famNo="+famNo+"&memberNo="+${dto.memberNo};
	}
}
</script>
<body>

	<div id="container">
		<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
		<div id="allInfo">
			<div class="userInfo">
				<h2>회원정보</h2>
				<div>아이디<input class="info" type="text" value="${dto.memberId}" readonly="readonly" style="margin-left:5px;"></div>
				<div>닉네임<input class="info" type="text" value="${dto.memberNickname}" readonly="readonly" style="margin-left:5px;"></div>
				<div>연락처<input class="info" type="text" value="${dto.memberPhone}" readonly="readonly" style="margin-left:5px;"></div>
				<div>이메일<input class="info" type="text" value="${dto.memberEmail}" readonly="readonly" style="margin-left:5px;"></div>
				<div>주&nbsp&nbsp&nbsp소
					<input class="info" type="text" value="${dto.memberDo}" readonly="readonly"><br>
					<input class="info" type="text" value="${dto.memberCity}" readonly="readonly" style="margin-left: 52px;"><br>
					<input class="info" type="text" value="${dto.memberAddr}" readonly="readonly" style="margin-left: 52px;">
				</div>
				<div style="margin-bottom: 40px;">
					<c:choose>
						<c:when test="${dto.memberSMS eq 'Y'}">
							<input class="smsChk" type="checkbox" checked="checked" readonly="readonly">
						</c:when>
						<c:otherwise>
							<input class="smsChk" type="checkbox" readonly="readonly">	
						</c:otherwise>
					</c:choose>
					문자알림
				</div>
				<div class="threeButton">
					<button type="button" onclick="getOut();" style="margin-left: 1.5%">탈퇴하기</button>
					<button type="button" onclick="goUpdate();" style="margin-left: 27%">수정하기</button>
				</div>
			</div>
			
			<div class="famInfo">
				<h2>가족정보</h2>
		 		<c:choose>
					<c:when test="${empty list }">
						<div style="margin-top:30px; margin-bottom: 30px;">등록한 가족구성원이 없습니다! 등록해주세요 </div>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="famDto">
							<div style="margin: auto; width: 300px; margin-bottom: 20px;">
							<input class="famMember" type="text" value="${famDto.famName}" readonly="readonly" onclick="goFamDetail(${famDto.famNo});">님
							<button class="famDelete" type="button" style="margin-left: 5px;" onclick="famDelete(${famDto.famNo});"><img class="famDelete-img" src="image/menu_close.png"></button>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<div>
					<button type="button" onclick="goFamInsert();" style="margin-left:65%; margin-top:3%; margin-bottom: 3%;" >추가</button>
				</div>
			</div>
	</div>

	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>