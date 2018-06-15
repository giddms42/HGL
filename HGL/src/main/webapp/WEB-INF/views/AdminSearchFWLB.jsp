<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/AdminSearchFWLB.css">
<style>
body { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<body>

	<div id="container">
   <div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
   
   <div id="b">
      <div id="bodyMain">
         <div id="boardName">${memberNickName}님의 위시리스트 게시판 상세</div>
         <br/>
         <img src="image/sadad.png" id="content">
               <table border="1" bordercolor="white">
                  <col width="70" class="ab">
                  <col width="550">
                  <col width="300">
                  <col width="70">
                  <tr>
                     <th>글번호</th>
                     <th>글제목</th>
                     <th>작성일</th>
                     <th>글삭제</th>
                  </tr>
                  	  <c:choose> 
	                 	<c:when test="${empty list}">
	                 		<c:forEach begin="0" end="9">
	                 		<tr>
	                 			<td colspan="4">--------------글이 없습니다.--------------</td>
	                 		</tr>
	                 		</c:forEach>         	
	                 	</c:when>
	                 	<c:otherwise>
	                 		  <c:forEach items="${list}" var="dto" varStatus="i">
	                		  	<c:choose>
	                		  		<c:when test="${nowPage eq 1}">
	                		  <tr>
										<td>${i.index+1}</td>
	                		  		</c:when>
	                		   		<c:otherwise>
	                		  <tr>
	                		   			<td>${i.index+1+(nowPage-1)*10}</td>
	                		   		</c:otherwise>
								</c:choose>
								<td><a href="FWLBDetail.do?fwlbNo=${dto.fwlbNo}&count=1&fwlbWriter=${dto.fwlbWriter}">${dto.fwlbTitle}</a></td>
								<td>${dto.fwlbDate }</td>
								<td><input type="button" onclick="location.href='AdminFWLBDelete.do?fwlbNo=${dto.fwlbNo}&memberNickName=${memberNickName}'" value="삭제"></td>
								</tr>
								</c:forEach>
	                 	</c:otherwise>
	                 </c:choose>
               </table>
               <br/>
                <div id="paging">
	          		<c:choose>
						<c:when test="${nowPage eq 1}">
							◀
						</c:when>
						<c:otherwise>
							<a href="AdminSearchFWLB.do?nowpage=${nowPage - 1}&memberNickName=${memberNickName}">◀</a>
						</c:otherwise>
					</c:choose> 
					<c:forEach begin="${startPage}" end="${endPage}" var="i">
						<a href="AdminSearchFWLB.do?nowpage=${i}&memberNickName=${memberNickName}"> 
						<c:choose>
							<c:when test="${i eq nowPage}">
								<strong>${i}</strong>
							</c:when>
							<c:otherwise>
								${i}
							</c:otherwise>
						</c:choose>
						</a>
					</c:forEach> 
					<c:choose>
						<c:when test="${nowPage eq pageCount}">
							▶
						</c:when>
						<c:otherwise>
							<a href="AdminSearchFWLB.do?nowpage=${nowPage + 1}&memberNickName=${memberNickName}">▶</a>
						</c:otherwise>
					</c:choose>
	            </div>
      </div>
   </div>
   
   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
   </div>

</body>
</html>