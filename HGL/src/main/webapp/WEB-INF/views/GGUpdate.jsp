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
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
var gfv_count = 1;

$(function(){

	 $("#addFile").on("click", function(e){ //파일 추가 버튼
         e.preventDefault();
         fn_addFile();
     });
      
     $("a[name^='delete']").on("click", function(e){ //삭제 버튼
         e.preventDefault();
         fn_deleteFile($(this));
     });

});

function fn_deleteFile(obj){
    obj.parent().remove();
}

function fn_addFile(){
    var str = "<p>" +
            "<input type='file' name='file_"+(gfv_count++)+"'>"+
            "<input type='button' name='delete' value='삭제'/>" +
              "</p>";
    $("#fileDiv").append(str);
    $("a[name^='delete']").on("click", function(e){ //삭제 버튼
        e.preventDefault();
        fn_deleteFile($(this));
    });
}

</script>
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
	          <form id="frm" name="frm" enctype="multipart/form-data" action="update.do" method="post">
	      		   <input type="hidden" name="ggNo" value="${dto.ggNo }">
	               <table border="1" bordercolor="white">
	               <col width="100">
	               	  <tr>
	               	  	<td colspan="2"><div>정말 좋은글 수정하기</div></td>
	               	  </tr>
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
	                     <td>
	                     <textarea rows="20" cols="50" style="resize: none;" name="ggCont">${dto.ggCont }</textarea></td>
	                  </tr>
	                  <tr>
	                  	<td>파일첨부 </td>
	                  	<td>
	                      <div id="fileDiv">               
                            <c:forEach items="${list}" var="ggImgDto" varStatus="i">
                                <p>
                                <!-- 이미지 번호 -->
                                <input type="hidden" id="IDX" class="file" name="IDX" value="${ggImgDto.ggImgNo}"/>
                                <!-- 원 제목 -->
                                ${ggImgDto.ggImgOrginalName}
                                <!-- 이미지 사이즈 -->
                                (${ggImgDto.ggImgSize}kb)
                                 <a href="#this" class="btn00" id="delete_${i.index }" name="delete_${i.index }"><button>삭제</button></a>
                                </p>
                            </c:forEach>
                        </div>
						</td>
					</tr>
	               </table>
	               <div class="btn00">
	               		<a href="#this" class="btn00" id="addFile">파일 추가</a>
	               		<input type="button" value="취소" onclick="location.href='GGDetailForm.do?ggNo=${dto.ggNo}&count=${dto.ggReadcnt}'" class="btn002">
		                <input type="submit" value="글수정" class="btn003">
	               </div>
	               <div id="paging">　<br>　</div>
	      </form>
	      </div>
	   </div>
	   
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>