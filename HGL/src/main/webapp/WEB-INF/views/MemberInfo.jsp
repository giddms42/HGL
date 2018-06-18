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
<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Baloo+Tamma'>
<style>
body {
 background: url('image/img.jpg') no-repeat center center fixed;
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
				<h2>Profile</h2>
				<div>
					<img class="memberIcon" src="icon/User-Profile-128.png"><input class="info" type="text" value="${dto.memberId}" readonly="readonly">
				</div>
				<div>
					<img class="memberIcon" src="icon/Smile-128.png"><input class="info" type="text" value="${dto.memberNickname}" readonly="readonly">
				</div>
				<div style="display: inline-block;">
					<img class="memberIcon" src="icon/Mobile-Phone-128.png" style="width: 40px; margin-top: 1px;">
					<input class="info" type="text" value="${dto.memberPhone}" readonly="readonly" style="width:220px; margin-left: -5px; vertical-align: top;">
				</div>	
				<div class="info" style="width: 170px; display: inline-block; margin-left: 5px; vertical-align: top;">
					<c:choose>
						<c:when test="${dto.memberSMS eq 'Y'}">
							문자알림 : Y
						</c:when>
						<c:otherwise>
							문자알림 : N
						</c:otherwise>
					</c:choose>
				</div>
				<div><img class="memberIcon" src="icon/Message-Mail-128.png"><input class="info" type="text" value="${dto.memberEmail}" readonly="readonly"></div>
				<div><img class="memberIcon" src="icon/Home-128.png">
					<input class="info" type="text" value="${dto.memberDo} ${dto.memberCity} ${dto.memberAddr}" readonly="readonly" style="margin-left: -5px;"><br>
				</div>
				<div class="threeButton">
					<button class="famButton" type="button" onclick="getOut();" style="margin-left: 4%">탈퇴하기</button>
					<button class="famButton" type="button" onclick="goUpdate();" style="margin-left: 32%">수정하기</button>
				</div>
			</div>
		
			
			<div class="famInfo">
				<h2>Family</h2>
		 		<c:choose>
					<c:when test="${empty list }">
						<div style="margin-top:28px; margin-bottom: 30px; font-size: 15pt; color:white;">등록한 가족구성원이 없습니다</div>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="famDto">
								<div class="famMember" onclick="goFamDetail(${famDto.famNo});">${famDto.famName}님 <img class="famDelete-img" src="icon/delete.png" onclick="famDelete(${famDto.famNo});"></div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<div>
					<button class="famButton" type="button" onclick="goFamInsert();" style="margin-left:60%;">추가</button>
				</div>
			</div>
	</div>

	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>