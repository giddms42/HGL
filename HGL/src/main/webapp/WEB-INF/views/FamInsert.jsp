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
	 $("input[type=checkbox]").each(function() { // 체크박스의 각자를 갖고와서 
		 if($(this).is(":checked")){//checked의 속성이 checked 라면 
			 $(this).prop("name","disease"); // name=disease 추가 
		 }else{ //chekced 속성이 checked가 아니라면 	 
			 $(this).removeAttr("name");
		 }
	 });	
  });
  
  
$("#famInsert").submit(function(){	
	if ($("input[type=checkbox]:checked").length > 3) {
		   alert("지병은 최대 3개까지만 선택할 수 있습니다. 다시 확인해주세요");
		   return false;
	}
		
 })

});

function change(obj){
	document.getElementById("chkCancer").value=obj;
	document.getElementById("chkCancer").checked=true;
	document.getElementById("chkCancer").name="disease";
	
}


function goSubmit(){
	window.opener.name = "Parent"; // 부모창의 이름 설정
    document.myForm.target = "Parent"; // 타켓을 부모창으로 설정
    self.close();
}


</script>

</head>
<body>
<div class="famRegistForm">
	    <header>
			<h3>가족정보 등록</h3>
			<div class="signUpText">가정 정보를 입력하세요</div>
		</header>
		
		<form id="famInsert" name="myForm" action="FamInsert.do" method="post" class="userForm" novalidate>
		<input type="hidden" name="memberNo" value="${login.memberNo}"/>
			<ul>
				<li>이름
					<input class="famInfo" type="text" name="famName" required="required" placeholder="이름를 입력해주세요">
				</li>
				<li>생일
					<input class="famInfo" type="NUMBER" name="famBirth" required="required" placeholder="생일를 입력해주세요(ex.19910621)">
				</li>
				<li style="margin-top: -30px; margin-left: 60px;">
					<label><input class="radi" type="radio" name="famLunar" value="양력">양력</label>
					<label><input class="radi" type="radio" name="famLunar" value="음력">음력</label>
				</li>
				<li>신장
					<input class="famInfo" type="number" name="famHeight" required="required" placeholder="cm. 숫자만 인력해주세요">
				</li>
			
				<li>지병 항목 (최대 3개)</li>
				<li>
					<input class="dis" type="checkbox" value="당뇨병" readonly="readonly"><a>당뇨병</a>
					<input class="dis" type="checkbox" value="심근경색증"><a>심근경색증</a>
					<input class="dis" type="checkbox" value="심부전증"><a>심부전증</a>
					<input class="dis" type="checkbox" value="지방간"><a>지방간</a>
				</li>
				<li>
					<input class="dis" type="checkbox" value="골다공증"><a>골다공증</a>
					<input class="dis" type="checkbox" value="알츠하이머"><a>알츠하이머</a>
					<input class="dis" type="checkbox" value="빈혈"><a>빈혈</a>
					
					<input class="dis" type="checkbox" value="질병없음"><a>질병없음</a>
					
				</li>
				<li>		
					<a>암을 선택해주세요</a>
					<input class="dis" type="checkbox" id="chkCancer" value="">
					<select onchange="change(this.options[this.selectedIndex].value);" style="height: 35px; width: 80px; text-align: center;">
						<option value="간암">간암</option>
						<option value="갑상선암">갑상선암</option>
						<option value="대장암">대장암</option>
						<option value="위암">위암</option>
						<option value="유방암">유방암</option>
						<option value="전립선암">전립선암</option>
					</select>
					
				</li>
			</ul>
			
			<div>
            	<input type="submit" value="등록하기" onclick="goSubmit();">
            	<input type="button" value="등록취소">
        	 </div>
		</form>
     </div> 

</body>
</html>