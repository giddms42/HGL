<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/FWLBDetail.css">
<style>
body {
	background: url('image/back.png') no-repeat center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#myform").submit(function(){
		if($("textarea[name=fwlbcmCont]").val() == null|| $("textarea[name=fwlbcmCont]").val() == ""){
			swal("댓글 내용을 작성해주세요");
			return false;
		}
	});
	
});
</script>
</head>
<body>
	<div id="container">
	  	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
		
		<div class="LWLBDcontainer">
		<h2>${dto.fwlbWriter} 님의 위시리스트입니다</h2>
				<div class="contHeader">		
					<span>공유일 : <fmt:formatDate value="${dto.fwlbDate}" pattern="yyyy-MM-dd" /></span><br>
					<span>작성자 : ${dto.fwlbWriter}</span><br>
				</div>
			<div class="minContainer">
				<div class="contBody">
					<table>
						<tr>
							<th>위시리스트 목록</th>
						</tr>
						<c:forEach items="${fwlList}" var="FwlDto">
						<tr>
							<c:choose>
								<c:when test="${FwlDto.fwlChk eq 'Y'}">
									<td><b>${FwlDto.fwlItem}</b></td>
								</c:when>
								<c:otherwise>
									<td>${FwlDto.fwlItem}</td>
								</c:otherwise>
							</c:choose>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
				<div class="contFoot">
					<button type="button" id="Listbtn" onclick="location.href='FWLBList.do?nowpage=1'">목록</button>
					<button type="button" id="Deletebtn" onclick="location.href='FWLBDelete.do?fwlbNo=${dto.fwlbNo}'">삭제</button>				
				</div>
				<hr>
			<!-- 댓글창 -->
			<div class="comment">
				<c:if test="${!empty fwlbcmList}">
					<c:forEach items="${fwlbcmList}" var="fwlbcmDto">
						<div class="commentBox">
							<span>작성자 : <b>${fwlbcmDto.fwlbcmWriter}</b></span>
							<div class="commnentDate">작성일 : <fmt:formatDate value="${fwlbcmDto.fwlbcmDate}" pattern="yyyy-MM-dd"/></div>
		       				<div class="commnentContent">${fwlbcmDto.fwlbcmCont}</div>
				      		<c:if test="${fwlbcmDto.fwlbcmWriter eq login.memberNickname}">	
				      			<div class="deleteIcon">
				      				<img src="icon/delete.png" onclick="location.href='FWLBCMDelete.do?fwlbcmNo=${fwlbcmDto.fwlbcmNo}&fwlbWriter=${dto.fwlbWriter}&count=0&fwlbNo=${dto.fwlbNo}'">
				      			</div>	
							</c:if>
						</div>
					</c:forEach>	
				</c:if>
				<hr>
 				<div class="insertComment">
					<form action="FWLBCMInsert.do" id="myform">
						<input type="hidden" name="fwlbNo" value="${dto.fwlbNo}" >
						<input type="hidden" name="fwlbWriter" value="${dto.fwlbWriter}">
						<input type="hidden" name="count" value="0"/>
						<textarea class="textbox" name="fwlbcmCont" placeholder="입력할 댓글을 작성해주세요" maxlength="300"></textarea>
 					<button>댓글달기</button>
					</form>
				</div>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/Footer.jsp"%>
	</div>
</body>
</html>