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
<link rel="stylesheet" type="text/css" href="css/GGList.css">
<style>
html { background: url("image/img.jpg") no-repeat center fixed;
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
	         <div id="boardName">좋은글 게시판</div>
	         <br/>
	         <img src="image/sadad.png" id="content">
	               <table border="1" bordercolor="white">
	                  <col width="50" class="ab">
	                  <col width="350">
	                  <col width="50">
	                  <col width="50">
	                  <col width="200">
	                  <tr>
	                     <th>글번호</th>
	                     <th>글제목</th>
	                     <th>글쓴이</th>
	                     <th>조회수</th>
	                     <th>등록일</th>
	                  </tr>
	                  <c:forEach items="${list }" var="dto">
	                  <tr>
						<td>${dto.ggNo }</td>
						<td>
							<a href="GGDetailForm.do?ggNo=${dto.ggNo }">${dto.ggTitle }</a>
						</td>
						<td>${dto.ggWriter }</td>
						<td>${dto.ggReadcnt }</td>
						<td>${dto.ggDate }</td>
					</tr>
				</c:forEach>
	               </table>
	               <div class="Gbtn"><input type="button" value="글쓰기" onclick="location.href='GGInsertForm.do'"></div>
	               <div id="paging">페이징<br>자리</div>
	               <br/>
	               <div id="paging">페이징<br>자리</div>
	      </div>
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>