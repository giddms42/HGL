<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/GGInsert.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<style>
html { background: url("image/img.jpg") no-repeat center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<script type="text/javascript">
var gfv_count = 1;
$(document).ready(function(){
    $("#addFile").on("click", function(e){ //파일 추가 버튼
        e.preventDefault();
        fn_addFile();
    });
     
    $("a[name='delete']").on("click", function(e){ //삭제 버튼
        e.preventDefault();
        fn_deleteFile($(this));
    });
});

function fn_addFile(){
    var str = "<p><input type='file' name='file_"+(gfv_count++)+"'><a href='#this' class='btn' name='delete'>삭제</a></p>";
    $("#fileDiv").append(str);
    $("a[name='delete']").on("click", function(e){ //삭제 버튼
        e.preventDefault();
        fn_deleteFile($(this));
    });
}
 
function fn_deleteFile(obj){
    obj.parent().remove();
}
</script>
<body>
	<div id="container">
	   <div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	   
	   <div id="b">
	      <div id="bodyMain">
	         <img src="image/sadad.png" id="content">
	         <form:form method="post" enctype="multipart/form-data" id="form" action="GGinsert.do">
	         	   <div id="boardName">정말 좋은글 글쓰기</div>
		           <br/>
	               <table border="1" bordercolor="white">
	               <col width="100">
	                  <tr>
	                     <td>글제목</td>
	                     <td><input type="text" placeholder="엄청 좋은글의 제목입니다" name="ggTitle" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글쓴이</td>
	                     <td><input type="text" value="${login.memberNickname}" readonly="readonly" name="ggWriter" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>글내용</td>
	                     <td><textarea rows="20" cols="50" placeholder="엄청 좋은글의 내용을 입력해주세요" name="ggCont" style="resize: none;"></textarea></td>
	                  </tr>
	                  <tr>
	                     <td>파일첨부 </td>
						<td>
						<div id="fileDiv">
						 <p>
                			<input type="file" id="file" name="file_0">
               				<a href="#this" class="btn" id="delete" name="delete">삭제</a>
           				 </p>
						</div>
						<textarea rows="5" placeholder="파일첨부 표시되는곳" style="resize: none;"></textarea>
						</td>
					</tr>
	               </table>
	               <div class="btn">               
	             		<a href="#this" class="btn" id="addFile">파일 추가</a>
	               		<input type="button" value="글목록" onclick="location.href='GGListForm.do'" class="btn2">
		                <input type="submit" value="글작성" class="btn3">
	               </div>
	      </form:form>
	               
	      </div>
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>