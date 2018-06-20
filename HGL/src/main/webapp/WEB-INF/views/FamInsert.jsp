<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가족정보 등록</title>
<link rel="stylesheet" type="text/css" href="css/FamInsert.css">
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
			});	
		}	
	});
 
	$("input[type=radio]").click(function(){
		var radioValue = $(this).val();
		 	if(radioValue=="질병없음"){
		 		$("#disNo").prop("name","disease");
		 		$("#disYes").removeAttr("name");
				$("#disYes").prop("checked",false);
				$("#disList").css("display","none");
				$("input[type=checkbox]").each(function() { // 체크박스의 각자를 갖고와서 			 
				$(this).removeAttr("name");				
				});	
			}else if(radioValue=="질병있음"){
				$("#disList").css("display","block"); 
				$("#disNo").prop("checked",false);
				$("#disNo").removeAttr("name");
			}
	});
	
	 $("#myForm").submit(function(){
		 var radioValue = $("#disYes").val(); 
         if($("input[name=famName]").val() == ""){
        	 swal("이름을 입력해주세요")
        	 return false;
         }else if($("input[name=famBirth]").val() == ""){
        	 swal("생일을 입력해주세요")
        	 return false;
         }else if($("input[name=famBirth]").val().length!=8){
        	 swal("예)19910621 형태로 입력해주세요");
	 		return false;
         }else if($("input[name=famHeight]").val() == ""){
        	 swal("신장을 입력해주세요")
        	 return false;
         }else if($("#disYes").is(":checked")){
        	 if($(".dis:checked").length < 1){
        	 swal("질병을 한개 이상 체크해주세요")
        	 return false;	
         	 }
         }
	 })
	 
	$(document).ready(function() {
	    $('#height').on('keyup', function() {
	        if($(this).val().length > 3) {
	            $(this).val($(this).val().substring(0, 3));
	        }
	    });
	});

	 
});

	function change(obj){
		document.getElementById("chkCancer").value=obj;
		document.getElementById("chkCancer").checked=true;
		document.getElementById("chkCancer").name="disease";
		
	}
	//생일에 숫자입력제한
	function maxLengthCheck(object){
		   if (object.value.length > object.maxLength){
		    object.value = object.value.slice(0, object.maxLength);
		   }
	}

</script>

</head>
<body>

	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	<div class="famRegistForm">
	    <header>
			<h3>가족정보 등록</h3>
			<div class="signUpText">가정 정보를 입력하세요</div>
		</header>
		<form id="myForm" action="FamInsert.do" method="post" class="userForm" novalidate>
			<input type="hidden" name="memberNo" value="${login.memberNo}"/>
			<div id="famInsert">
				<table id="famTable">
					<col width="48">
					<col width="250">
					<tr>
						<td><img src="icon/Famuser.png" style="width: 70%"></td>
						<td><input type="text" name="famName" required="required" placeholder="이름를 입력해주세요"></td>
					</tr>
					<tr>
						<td><img src="icon/birthday.png" style="width: 70%"></td>
						<td><input type="NUMBER" name="famBirth" required="required" placeholder="생일를 입력해주세요 (ex.19910621)"
					 max="9999" maxlength="8" oninput="maxLengthCheck(this)"/></td>
					</tr>
					<tr>
						<td><img src="icon/height.png" style="width: 70%"></td>
						<td><input type="number" name="famHeight" required="required" placeholder="키를 입력해주세요" id="height"></td>
					</tr>
				</table>
				<div id="famRadi" style="text-align: center; margin-top: 30px;">
					<label><input class="radi" type="radio" value="질병없음" id="disNo" name="disease" checked="checked">질병없음</label>
          			<label><input class="radi" type="radio" value="질병있음" id="disYes">질병있음</label>
				</div>
								
				<div id="disList">	
					<div style="text-align: center;">지병 항목 (최대 3개)</div>
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
        	</div>	 
			<div id="TwoBtn" style="margin-top: 30px;">
	            <button onclick="goSubmit();">등록하기</button>
	            <button style="margin-left: 70px;" type="button" onclick="history.back();">등록취소</button>
        	</div>
		</form>
     </div> 

</body>
</html>