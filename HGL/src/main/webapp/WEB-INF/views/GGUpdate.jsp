<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	          <form id="frm" name="frm" enctype="multipart/form-data" action="update.do" method="post">
	      		   <input type="hidden" name="ggNo" value="${dto.ggNo }">   	   
	         	   <div id="boardName">정말 좋은글 수정하기</div>
		           <br/>
	               <table border="1" bordercolor="white">
	               <col width="100">
	                  <tr>
	                     <td>글제목</td>
	                     <td><input type="text" class="td" value="${dto.ggTitle }" name="ggTitle"></td>
	                  </tr>
	                  <tr>
	                     <td>글쓴이</td>
	                     <td><input type="text" value="${dto.ggWriter }" readonly="readonly" class="td" name="ggWriter"></td>
	                  </tr>
	                  <tr>
	                     <td>글내용</td>
	                     <td><textarea rows="20" cols="50" style="resize: none;" name="ggCont">${dto.ggCont }</textarea></td>
	                  </tr>
	                  <tr>
	                  	<td>
	                      <div id="fileDiv">               
                            <c:forEach items="${list}" var="ggImgDto" varStatus="i">
                                <p>
                                    <input type="hidden" id="IDX" name="IDX_${var.index }" value="${row.IDX }">
                                    <a href="#this" id="name_${var.index }" name="name_${var.index }">${row.ORIGINAL_FILE_NAME }</a>
                                    <input type="file" id="file_${var.index }" name="file_${var.index }">
                                    (${row.FILE_SIZE }kb)
                                    <a href="#this" class="btn" id="delete_${var.index }" name="delete_${var.index }">삭제</a>
                                </p>
                            </c:forEach>
                        </div>
						</td>
					</tr>
	               </table>
	               <div class="btn">
	               		<input type="button" value="파일첨부" onclick="" class="btn1">
	               		<input type="button" value="취소" onclick="location.href='GGListForm.do?nowpage=1'" class="btn2">
		                <input type="submit" value="글수정" class="btn3">
	               </div>
	               <div id="paging">　<br>　</div>
	      </form>
	      </div>
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>