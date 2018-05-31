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
<link rel="stylesheet" type="text/css" href="css/GGUpdate.css">
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
	         <img src="image/sadad.png" id="content">
	         <form action="" id="form">
	         	   <div id="boardName">정말 좋은글 수정하기</div>
		           <br/>
	               <table border="1" bordercolor="white">
	               <col width="100">
	                  <tr>
	                     <td>글제목</td>
	                     <td><input type="text" class="td" value="입력해둔 제목 "></td>
	                  </tr>
	                  <tr>
	                     <td>글쓴이</td>
	                     <td><input type="text" value="정현이" readonly="readonly" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글내용</td>
	                     <td><textarea rows="20" cols="50" style="resize: none;">입력해둔 내용</textarea></td>
	                  </tr>
	                  <tr>
	                     <td>파일첨부</td>
						<td><textarea rows="5" placeholder="파일첨부 표시되는곳" style="resize: none;"></textarea></td>
					</tr>
	               </table>
	               <div class="btn">
	               		<input type="button" value="파일첨부" onclick="" class="btn1">
	               		<input type="button" value="취소" onclick="location.href='GGListForm.do'" class="btn2">
		                <input type="button" value="글수정" onclick="" class="btn3">
	               </div>
	               <div id="paging">　<br>　</div>
	      </form>
	      </div>
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>