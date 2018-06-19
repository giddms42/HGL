<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지병항목 변경하기</title>
<script src="https://unpkg.com/sweetswal/dist/sweetswal.min.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function(){
$("input[type=checkbox]").click(function(){ //체크박스를 클릭할때마다 
	if($("input[type=checkbox]:checked").length > 3) {
		   swal("지병은 최대 3개까지만 선택할 수 있습니다. 다시 확인해주세요");
		   $(this).prop("checked", false);
	}else{
		$("input[type=checkbox]").each(function() { // 체크박스의 각자를 갖고와서 
			 if($(this).is(":checked")){//checked의 속성이 checked 라면 
				 $(this).prop("name","disease"); // name=disease 추가 
			 }else{ //chekced 속성이 checked가 아니라면 	 
				 $(this).removeAttr("name");
			 }
		 })	
	}	
 });
})

	$(function(){
		$("#DiseaseForm").submit(function(){
	       	 if($(".dis:checked").length < 1){
		       	 swal("질병을 한개 이상 체크해주세요")
		       	 return false;	
	       	 }else{
		       	 window.opener.name = "Parent"; // 부모창의 이름 설정
			     document.myForm.target = "Parent"; // 타켓을 부모창으로 설정
			     self.close();
	        	 }
		 	 }
		);
	});
	    	
function change(obj){
	document.getElementById("chkCancer").value=obj;
	document.getElementById("chkCancer").checked=true;
	document.getElementById("chkCancer").name="disease";
	
}
</script>
<style>
#diseaseUpdate{
	background-color: #f2f2f2;
	width:400px;
	margin:auto;
}
.dis{
	width: 20px;
	height: 20px;
	vertical-align: top;
}
</style>
</head>
<body>
	
	<div id="diseaseUpdate">
		<form id="DiseaseForm" action="FamDiseaseUpdate.do" name="myForm">
		<input type="hidden" name="famNo" value="${famDto.famNo}"/>
		<div id="disList">	
			<div style="text-align: center; margin-bottom: 10px;"><b>지병 항목 (최대 3개)</b></div>
			<table style="margin: auto;">
				<tr>
					<td><input class="dis" type="checkbox" value="알츠하이머">알츠하이머</td>
					<td><input class="dis" type="checkbox" value="지방간">지방간</td>
					<td><input class="dis" type="checkbox" value="당뇨병">당뇨병</td>
					<td><input class="dis" type="checkbox" value="빈혈">빈혈</td>
				</tr>
				<tr>
					<td><input class="dis" type="checkbox" value="심근경색증">심근경색증</td>
					<td><input class="dis" type="checkbox" value="심부전증">심부전증</td>
					<td><input class="dis" type="checkbox" value="골다공증">골다공증</td>
				</tr>
				<tr>
					<td colspan="4">
					<input class="dis" type="checkbox" id="chkCancer" value="">암
					<select onchange="change(this.options[this.selectedIndex].value);" id="diseSelect">
						<option value="">종류를 선택하세요</option>
						<option value="간암">간암</option>
						<option value="갑상선암">갑상선암</option>
						<option value="대장암">대장암</option>
						<option value="위암">위암</option>
						<option value="유방암">유방암</option>
						<option value="전립선암">전립선암</option>
					</select>
					</td>
				</tr>
			</table>
		</div>
		<div style="text-align:center; margin-top: 10px; margin-bottom: 20px;">
			<button>변경</button>
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			<button type="button" onclick="self.close()">취소</button>
		</div>
		</form>
   	</div>	
</body>
</html>