<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	
  function fn_editFL(){
		var Wish = document.getElementsByName("fwlItem")[0].value;
		if(Wish!=""){
			var params = $("#wishInsert").serialize();
			$.ajax(
			{
				url : "FWLInsert.do",
				data : params,
				success : function(xh){
					window.opener.location.reload(); 
					window.close();
						},error:function(){
							window.opener.location.reload(); 
							window.close();							
						}
			});
		}else{
			alert("위시리스트를 입력해주세요.");
			return false;
		}
	}
 
</script>
<style>
.FWLInsert button{
	margin-top:5px;
	width:50px;
	height: 30px;
	background: transparent;
	border: 1px solid orange;
	border-radius: 5px;
}
.FWLInsert button:active {
	position: relative;
	top:2px;	
}
</style>
</head>
<body >
	<div class="FWLInsert" style="background: rgb(255,165,0,0.4); border: 2px solid orange; border-radius:10px; margin: auto; width: 550px; text-align: center;">
		<h3>위시리스트 추가하기</h3>
		<form id="wishInsert">
			<div>
				<textarea name="fwlItem" placeholder="위시리스트를 입력해주세요" maxlength="60" style="width: 500px; height: 30px;"></textarea>
				<input type="hidden" name="memberNo" value="${memberNo}"/>
			<button type="button" onclick="self.close()" style="float:right; margin-left: 10px;">취소</button>
			<button onclick="fn_editFL();" style="float:right;">추가</button>
			</div>
		</form>
	</div>
	
</body>
</html>