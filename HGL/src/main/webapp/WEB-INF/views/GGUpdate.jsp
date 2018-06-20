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
<script src="https://unpkg.com/sweetswal/dist/sweetswal.min.js"></script>
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
    var str = "<p id='fileDiv1'>" +
            "<input id='fileDiv2' type='file' name='file_"+(gfv_count++)+"'>"+
            "<a href='#this' class='fileDiv0' id='delete_${i.index }' name='delete_${i.index }'><button class='fileDiv'>삭제</button></a>" +
              "</p>";
    $("#fileDiv").append(str);
    $("a[name^='delete']").on("click", function(e){ //삭제 버튼
        e.preventDefault();
        fn_deleteFile($(this));
    });
}

$(function(){
	$("#frm").submit(function(){
		if($("input[name=ggTitle]").val()==null || $("input[name=ggTitle]").val()==""){
			swal("제목을 입력해주세요");
			return false;
		}else if($("textarea[name=ggCont]").val()==null || $("textarea[name=ggCont]").val()==""){
			swal("내용을 입력해주세요");
			return false;
		}
		
	});
	
	
});

</script>
</head>
<link rel="stylesheet" type="text/css" href="css/GGUpdate.css">
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
	   		  <br/>
	          <form id="frm" name="frm" enctype="multipart/form-data" action="update.do" method="post">
	      		   <input type="hidden" name="ggNo" value="${dto.ggNo }">
	               <table border="1" bordercolor="white">
	               <col width="100">
	               	  <tr>
	               	  	<td colspan="2"><div>좋은글 게시판 수정하기</div></td>
	               	  </tr>
	                  <tr>
	                     <td>제목</td>
	                     <td><input type="text" class="td" value="${dto.ggTitle }" name="ggTitle"></td>
	                  </tr>
	                  <tr>
	                     <td>작성자</td>
	                     <td><input type="text" value="${dto.ggWriter }" readonly="readonly" class="td" name="ggWriter"></td>
	                  </tr>
	                  <tr>
	                     <td>내용</td>
	                     <td>
	                     <textarea class="td" rows="20" cols="50" style="resize: none;" name="ggCont">${dto.ggCont }</textarea></td>
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
                                 <a href='#this' class='fileDiv0' id='delete_${i.index }' name='delete_${i.index }'><button class='fileDiv'>삭제</button></a>
                                </p>
                            </c:forEach>
                        </div>
						</td>
					</tr>
	               </table>
	               <div class="btn00">
	               		<button class="btn0" id="addFile">파일 추가</button>
	               		<input type="button" value="취소" onclick="location.href='GGDetailForm.do?ggNo=${dto.ggNo}&count=${dto.ggReadcnt}'" class="btn002">
		                <input type="submit" value="글수정" class="btn003">
	               </div>
	               <br> <div id="paging">　<br>　</div>
	      </form>
	      </div>
	   </div>
	   <br/>
	   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>