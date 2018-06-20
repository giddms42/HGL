<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>건강정보 추가</title>
<link rel="stylesheet" type="text/css" href="css/FamHealthInsert.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(function(){
	$(document).ready(function() {
	    $('input').on('keyup', function() {
	        if($(this).val().length > 3) {
	            $(this).val($(this).val().substring(0, 3));
	        }
	    });
	})
	$("#healthForm").submit(function(){
		var radioValue = $("#disYes").val(); 
	    if($("input[name=healthWeight]").val() == ""){
		   	alert("체중을 입력해주세요")
	   		return false;
	    }else if($("input[name=healthShrbp]").val() == ""){
	   	 	alert("수축기 혈압을 입력해주세요")
	   	 	return false;
	    }else if($("input[name=healthRelbp]").val() == ""){
	   	 	alert("이완기 혈압을 입력해주세요")
	   	 	return false;
	    }else{
	    	window.opener.name = "Parent"; // 부모창의 이름 설정
	        document.myForm.target = "Parent"; // 타켓을 부모창으로 설정
	        self.close();
	    }	
	})
})
</script>
</head>
<body>

	<div id="addHealth">
		<h3>${famDto.famName}님의 건강정보 추가</h3>
		<form id="healthForm" action="FamHealthInsert.do" method="post" name="myForm">
		<input type="hidden" name="famNo" value="${famDto.famNo}">
			<table style="margin: auto; text-align: center;">
				<tr>
					<td>체중</td>
					<td><input class="healthInfoAdd" type="number" name="healthWeight" placeholder="체중을 입력해주세요"></td>
				</tr>
				<tr>
					<td>수축기</td>
					<td><input class="healthInfoAdd" type="number" name="healthShrbp" placeholder="수축기를 입력해주세요"></td>
				</tr>
				<tr>
					<td>이완기</td>
					<td><input class="healthInfoAdd" type="number" name="healthRelbp" placeholder="이완기를 입력해주세요"></td>
				</tr>
				<tr>
					<td colspan="2"><button>추가</button><button type="button" onclick="self.close()" style="margin-left: 10%;">취소</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>