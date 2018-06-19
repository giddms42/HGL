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
body {
 background: url('image/back.png') no-repeat center center fixed;
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
    var str = "<p id='fileDiv1'><input id='fileDiv2' type='file' id='file' name='file_"+(gfv_count++)+"'><a href='#this' class='fileDiv0' name='delete'><button class='fileDiv'>삭제</button></a></p>";
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
	   <br/>
	   <div id="b">
	      <div id="bodyMain">
	         <form:form method="post" enctype="multipart/form-data" id="form" action="GGinsert.do">
	         	   
		           <br/>
	               <table border="1" bordercolor="white">
	               <col width="100">
	               		<tr>
							<td colspan="2" class="th">
								<div>좋은글 게시판 글쓰기</div>
							</td>
						</tr>
	                  <tr>
	                     <td>제목</td>
	                     <td><input type="text" placeholder="제목을 입력해주세요." name="ggTitle" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>작성자</td>
	                     <td><input type="text" value="${login.memberNickname}" readonly="readonly" name="ggWriter" class="td"></td>
	                  </tr>
	                  <tr>
	                     <td>내용</td>
	                     <td><textarea rows="20" cols="50" placeholder="내용을 입력해주세요" name="ggCont" class="td" style="resize: none;"></textarea></td>
	                  </tr>
	                  <tr>
	                     <td>파일첨부 </td>
						<td>
							<div id="fileDiv">
							</div>
						</td>
					</tr>
	               </table>
	               <div class="btn00">               
	             		<button class="btn01" id="addFile">파일 추가</button>
	               		<input type="button" value="글목록" onclick="location.href='GGListForm.do?nowpage=1'" class="btn02">
		                <input type="submit" value="글작성" class="btn03">
	               </div>
	      </form:form>
	               
	      </div>
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>