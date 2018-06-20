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
</head>
<body>

	<div style="margin: auto; width: 500px;">
		<h3>위시리스트 추가하기</h3>
		<form id="wishInsert">
			<div>
				<textarea name="fwlItem" placeholder="위시리스트를 입력해주세요" maxlength="60" style="width: 500px; height: 30px;"></textarea>
				<input type="hidden" name="memberNo" value="${memberNo}"/>
			</div>
			<br>
			<button type="button" onclick="self.close()" style="float:right; margin-left: 10px;">취소하기</button>
			<button onclick="fn_editFL();" style="float:right;">추가하기</button>
		</form>
	</div>
	
</body>
</html>