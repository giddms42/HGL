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

// function memberDetail(){
// window.open("FamDetailForm.do?famNo="+ ${famDto.famNo},"","width=600,height=900,location=no,status=no,scrollbars=yes");	
// //window.open('FamDetailForm.do?famNo='+${famDto.famNo},'','width=600,height=900,location=no,status=no,scrollbars=yes');
// }

</script>
<body>

	<div id="container">
	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	
		<div id="allInfo">
			<div class="userInfo">
				<h2>회원정보</h2>
				<ul>
					<li>아이디<input class="info" type="text" value="${dto.memberId}" readonly="readonly"></li>
					<li>닉네임<input class="info" type="text" value="${dto.memberNickname}" readonly="readonly"></li>
					<li>연락처<input class="info" type="text" value="${dto.memberPhone}" readonly="readonly"></li>
					<li class="smsChk">
					<c:choose>
						<c:when test="${dto.memberSMS eq 'Y'}">
							<input class="smsChk" style="width:5%" type="checkbox" checked="checked" readonly="readonly">
						</c:when>
						<c:otherwise>
						<input class="smsChk" style="width:5%" type="checkbox" readonly="readonly">	
						</c:otherwise>
					</c:choose>
					문자알림을 받으시겠습니까?
					</li>
					<li>이메일<input class="info" type="text" value="${dto.memberEmail}" readonly="readonly"></li>
					<li>주&nbsp&nbsp&nbsp소
					<input class="info" type="text" value="${dto.memberDo}" readonly="readonly"><br>
					<input class="info" type="text" value="${dto.memberCity}" readonly="readonly"><br>
					<input class="info" type="text" value="${dto.memberAddr}" readonly="readonly">
					</li>
				</ul>
			</div>
			
				
			<div class="famInfo">
			
				<h2>가족정보</h2>

	 		<c:choose>
				<c:when test="${empty list }">
					<span>등록한 가족구성원이 없습니다! 등록해주세요 </span>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="famDto">
						<input class="famMember" type="text" value="${famDto.famNo}" readonly="readonly" onclick="window.open('FamDetailForm.do?famNo='+ ${famDto.famNo},'','width=600,height=900,location=no,status=no,scrollbars=yes');"> ${famDto.famName} 님
						<input type="button" value="정보추가" style="margin-left: 10px;" onclick="window.open('FamHealthInsertForm.do?famNo='+${famDto.famNo},'','width=600,height=500,location=no,status=no,scrollbars=yes');">
						<input type="button" value="삭제" style="margin-left: 5px;" onclick="location.href='FamDelete.do?famNo='+${famDto.famNo}+'&memberNo='+${dto.memberNo}"><br>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			</div>
	</div>
		
				
		<div class="threeButton">
			<input type="button" value="탈퇴하기" onclick="getOut();" style="margin-left: 1.5%">
			<input type="button" value="수정하기" onclick="goUpdate();" style="margin-left: 37%">
			<input type="button" value="가족추가" onclick="window.open('FamInsertForm.do','','width=600,height=500,location=no,status=no,scrollbars=yes');"style="margin-left: 36.5%">
		</div>

	<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>