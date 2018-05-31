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
<link rel="stylesheet" type="text/css" href="css/GGDetail.css">
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
	         <!-- <img src="image/sadad.png" id="content"> -->
	         <form action="GGUpdateForm.do?ggNo=${dto.ggNo }" id="form" method="post">
		           <br/>
	               <table border="1" bordercolor="white">
	               <col width="100">
	               	  <tr>
	               	  	 <td colspan="2">
	         	   			<div>좋은글 게시판 상세보기</div>
	               	  	 </td>
	               	  </tr>
	               	  <tr>
	                     <td>조회수</td>
	                     <td><input type="text" value="${dto.ggReadcnt }" readonly="readonly" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>작성일</td>
	                     <td><input type="text" value="${dto.ggDate }" readonly="readonly" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글제목</td>
	                     <td><input type="text" value="${dto.ggTitle }" readonly="readonly" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글쓴이</td>
	                     <td><input type="text" value="${dto.ggWriter }" readonly="readonly" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글내용</td>
	                     <td><textarea rows="20" cols="50" readonly="readonly" style="resize: none;">${dto.ggCont }</textarea></td>
	                  </tr>
	               </table>
	               <div class="btn">
	               		<input type="button" value="글목록" onclick="location.href='GGListForm.do'" class="btn1">
	               		<input type="submit" value="글수정" class="btn2">
		                <input type="button" value="글삭제" onclick="location.href='GGDelete.do?ggNo=${dto.ggNo}'" class="btn3">
	               </div>
	               <div id="paging">　<br>　</div>
	      </form>
	      </div>
	      
	      <div id="comment">
	      		<div>
	      		<form action="" id="form">
		           <br/>
	               <table border="1" bordercolor="white">
	                  <col width="125" class="ab">
	                  <col width="800">
	                  <col width="150">
	                  <tr>
	               	  	 <td colspan="3">
	         	   			<div>댓글 작성</div>
	               	  	 </td>
	               	  </tr>
	                  <tr>
						<td>작성자</td>
						<td><textarea rows="3" cols="" placeholder="댓글 내용을 입력해주세요" style="resize: none;"></textarea></td>
						<td><input type="submit" value="댓글달기" id="Cbtn1"></td>
					</tr>
	               </table>
	     		</form>
	      		</div>
	      		
	      		<div>
	      		<form action="" id="form">
		           <br/>
	               <table border="1" bordercolor="white">
	                  <col width="125" class="ab">
	                  <col width="800">
	                  <col width="155">
	                  <tr>
	               	  	 <td colspan="3">
	         	   			<div>댓글 목록</div>
	               	  	 </td>
	               	  </tr>
	                  <tr>
						<td>작성자</td>
						<td><textarea rows="3" cols="" readonly="readonly" style="resize: none;">댓글 내용입니다 / for문으로 목록 나열해야함</textarea></td>
						<td>
							<input type="submit" value="수정" class="Cbtn2">
							<input type="button" value="삭제" class="Cbtn2">
						</td>
					</tr>
	               </table>
	     		</form>
	      		</div>
	      </div>
	      
	      <br>
	      
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>