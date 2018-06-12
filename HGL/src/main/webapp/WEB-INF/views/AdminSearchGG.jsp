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
         <div id="boardName">정현이님의 좋은글 게시판 상세</div>
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
              
               </table>
               <br/>
               <div id="paging">페이징<br>자리~!</div>
      </div>
   </div>
   
   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
   </div>

</body>
</html>