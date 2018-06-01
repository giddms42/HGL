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
html { /* background: url("image/img.jpg") no-repeat center fixed; */
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
    var con = confirm("정말로 탈퇴하시겠습니까?");
    if(con==true){
       //alert("탈퇴되었습니다.");
       location.href="MemberGetOut.do?memberNo="+${dto.memberNo};
    }
 }
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
				<div>아이디<input class="info" type="text" value="${dto.memberId}" readonly="readonly"></div>
				<div>닉네임<input class="info" type="text" value="${dto.memberNickname}" readonly="readonly"></div>
				<div>연락처<input class="info" type="text" value="${dto.memberPhone}" readonly="readonly"></div>
				<div class="smsChk">
				<c:choose>
					<c:when test="${dto.memberSMS eq 'Y'}">
						<input class="smsChk" style="width:5%" type="checkbox" checked="checked" readonly="readonly">
					</c:when>
					<c:otherwise>
					<input class="smsChk" style="width:5%" type="checkbox" readonly="readonly">	
					</c:otherwise>
				</c:choose>
				문자알림을 받으시겠습니까?
				</div>
				<div>이메일<input class="info" type="text" value="${dto.memberEmail}" readonly="readonly"></div>
				<div>주&nbsp&nbsp&nbsp소
				<input class="info" type="text" value="${dto.memberDo}" readonly="readonly"><br>
				<input class="info" type="text" value="${dto.memberCity}" readonly="readonly"><br>
				<input class="info" type="text" value="${dto.memberAddr}" readonly="readonly">
				</div>
			</div>
			
				
			<div class="famInfo">
				<h2>가족정보</h2>
		 		<c:choose>
					<c:when test="${empty list }">
						<span>등록한 가족구성원이 없습니다! 등록해주세요 </span>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="famDto">
							<div style="margin: auto; width: 300px;">
							<input class="famMember" type="text" value="${famDto.famName}" readonly="readonly" onclick="goFamDetail(${famDto.famNo});">님
							<button class="famDelete" type="button" style="margin-left: 5px;" onclick="famDelete(${famDto.famNo});"><img class="famDelete-img" src="image/menu_close.png"></button>
							<hr>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
	</div>
		
				
		<div class="threeButton">
			<button type="button" onclick="getOut();" style="margin-left: 1.5%">탈퇴하기</button>
			<button type="button" onclick="goUpdate();" style="margin-left: 37%">수정하기</button>
			<button type="button" onclick="goFamInsert();" style="margin-left: 36.5%">가족추가</button>
		</div>

	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>