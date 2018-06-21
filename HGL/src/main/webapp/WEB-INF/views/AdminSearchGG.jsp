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
<link rel="stylesheet" type="text/css" href="css/AdminSearchGG.css">
<style>
body {
 background: url('image/back.png') no-repeat center center fixed;
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
         <div id="boardName">${memberNickName}님의 좋은글 게시판 상세</div>
         <br/>
               <table border="1" bordercolor="white">
                  <col width="70" class="ab">
                  <col width="550">
                  <col width="300">
                  <col width="70">
                  <tr>
                     <th class="th">글번호</th>
                     <th class="th">글제목</th>
                     <th class="th">작성일</th>
                     <th class="th">글삭제</th>
                  </tr>
              	  <c:choose> 
	                 	<c:when test="${empty list}">
	                 		<c:forEach begin="0" end="9">
	                 		<tbody>
		                 		<tr>
		                 			<td colspan="4">작성된 글이 존재하지 않습니다.</td>
		                 		</tr>
	                 		</tbody>
	                 		</c:forEach>         	
	                 	</c:when>
	                 	<c:otherwise>
	                 		  <c:forEach items="${list}" var="dto" varStatus="i">
	                		  <tr>
		                		  	<c:choose>
		                		  		<c:when test="${nowPage eq 1}">
											<td>${i.index+1}</td>
		                		  		</c:when>
		                		   		<c:otherwise>
		                		 
		                		   			<td>${i.index+1+(nowPage-1)*10}</td>
		                		   		</c:otherwise>
									</c:choose>
									<td><a href="GGDetailForm.do?ggNo=${dto.ggNo}&count=1">${dto.ggTitle}</a></td>
									<td>${dto.ggDate }</td>
									<td><input class="btn-3" type="button" onclick="location.href='AdminGGDelete.do?ggNo=${dto.ggNo}&memberNickName=${memberNickName}'" value="삭제"></td>
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
							<a href="AdminSearchGG.do?nowpage=${nowPage - 1}&memberNickName=${memberNickName}">◀</a>
						</c:otherwise>
					</c:choose> 
					<c:forEach begin="${startPage}" end="${endPage}" var="i">
						<a href="AdminSearchGG.do?nowpage=${i}&memberNickName=${memberNickName}"> 
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
						<c:when test="${pageCount eq 0}">
	                    	 ▶
	                    </c:when>
						<c:otherwise>
							<a href="AdminSearchGG.do?nowpage=${nowPage + 1}&memberNickName=${memberNickName}">▶</a>
						</c:otherwise>
					</c:choose>
	            </div>
      </div>
   </div>
   
   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
   </div>

</body>
</html>