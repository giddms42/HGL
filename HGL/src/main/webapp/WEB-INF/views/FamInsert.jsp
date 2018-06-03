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
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(function(){
$("input[type=checkbox]").click(function(){ //체크박스를 클릭할때마다 
	if($("input[type=checkbox]:checked").length > 3) {
		   alert("지병은 최대 3개까지만 선택할 수 있습니다. 다시 확인해주세요");
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
		 $("#disYes").prop("checked",false);
		 $("#disList").css("display","none");  
	 }else if(radioValue=="질병있음"){
		 $("#disList").css("display","block"); 
		 $("#disNo").prop("checked",false);
		 $("#disNo").removeAttr("name");
	 }
	 
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
<div class="famRegistForm">
	    <header>
			<h3>가족정보 등록</h3>
			<div class="signUpText">가정 정보를 입력하세요</div>
		</header>
		
		<form name="myForm" action="FamInsert.do" method="post" class="userForm" novalidate>
			<input type="hidden" name="memberNo" value="${login.memberNo}"/>
			<div id="famInsert">
				<div style="margin-top: 30px;">이름
					<input class="famInfo" type="text" name="famName" required="required" placeholder="이름를 입력해주세요">
				</div>
				<div>생일
					<input class="famInfo" type="NUMBER" name="famBirth" required="required" placeholder="생일를 입력해주세요(ex.19910621)"
					 max="9999" maxlength="8" oninput="maxLengthCheck(this)"/>
				</div>
				<div style="margin-top: -30px; margin-left: 60px;">
					<label><input class="radi" type="radio" name="famLunar" value="양력">양력</label>
					<label><input class="radi" type="radio" name="famLunar" value="음력">음력</label>
				</div>
				<div>신장
					<input class="famInfo" type="number" name="famHeight" required="required" placeholder="cm. 숫자만 인력해주세요">
				</div>
				
				<label><input class="radi" type="radio" name="t" value="질병없음" id="disNo">질병없음</label>
          		<label><input class="radi" type="radio" name="t" value="질병있음" id="disYes">질병있음</label>
				
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
			<div style="margin-top: 30px;">
	            <button style="margin-left: 105px;"onclick="goSubmit();">등록하기</button>
	            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	            <button type="button" onclick="history.back();">등록취소</button>
        	</div>
		</form>
     </div> 

</body>
</html>