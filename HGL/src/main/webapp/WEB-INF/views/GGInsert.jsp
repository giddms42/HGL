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
<link rel="stylesheet" type="text/css" href="css/GGInsert.css">
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
	         <div id="boardName">좋은글 상세보기</div>
	         <br/>
	         <img src="image/sadad.png" id="content">
	               <table border="1" bordercolor="white">
	               <col width="100">
	                  <tr>
	                     <td>글제목</td>
	                     <td><input type="text" value="엄청 좋은글의 제목입니다" readonly="readonly" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글쓴이</td>
	                     <td><input type="text" value="정현이" readonly="readonly" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글내용</td>
	                     <td><textarea rows="20" cols="50" placeholder="엄청 좋은글의 내용을 입력해주세요" style="resize: none;"></textarea></td>
	                  </tr>
	                  <tr>
	                     <td>파일첨부</td>
						<td><textarea rows="5" placeholder="파일첨부 표시되는곳"></textarea></td>
					</tr>
	               </table>
	               <div class="Gbtn"><input type="button" value="글쓰기" onclick=""></div>
	               <div id="paging">페이징<br>자리</div>
	               <br/>
	               <div id="paging">페이징<br>자리</div>
	      </div>
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>