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
	
function fn_editFL()
{
	var params = $("#wishInsert").serialize();
	$.ajax(
	{
		url : "FWLInsert.do",
		data : params,
		success : function(xh)
				{		
					alert("추가되었습니다.");
					opener.parent.location.reload();
					self.close();
				}
	});
}

</script>
</head>
<body>

	<div style="margin: auto; width: 500px;">
		<h3>위시리스트 추가하기</h3>
		<form id="wishInsert">
			<div>
				<input type="text" name="fwlItem" placeholder="위시리스트를 입력해주세요" style="width: 500px;">
				<input type="hidden" name="memberNo" value="${memberNo}"/>
			</div>
			<br>
			<button type="button" onclick="self.close()" style="float:right; margin-left: 10px;">취소하기</button>
			<button onclick="fn_editFL();" style="float:right;">추가하기</button>
		</form>
	</div>
	
</body>
</html>