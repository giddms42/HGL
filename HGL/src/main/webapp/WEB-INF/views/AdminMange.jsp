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
function MangeY(){
	var nickName = $("#YmangeNickname").val();
	if(nickName==null || nickName==""){
		alert("닉네임을 입력해주세요");
	}else{
		 $.ajax({
	          url : "AdminMange.do",
	          data:"memberNickName="+nickName,
	          success : function(msg) {
	        	  var msgVal = $.trim(msg);
	        	  $("#Ymange").val(msgVal);
	          }
	       })
	}
}

function MangeN(){
	var nickName = $("#NmangeNickname").val();
	if(nickName==null || nickName==""){
		alert("닉네임을 입력해주세요");
	}else{
		 $.ajax({
	          url : "AdminMangeCancel.do",
	          data:"memberNickName="+nickName,
	          success : function(msg) {
	        	  var msgVal = $.trim(msg);
	        	  $("#Nmange").val(msgVal);
	          }
	       })
	}
}
</script>
</head>
<link rel="stylesheet" type="text/css" href="css/AdminMange.css">
<body>

	<div id="container">
		<div>
		<div id="cover">
			<div><b>회원 제재</b></div>
			<div id="div0">
				<div class="div2"><input type="text" id="YmangeNickname" placeholder="닉네임을 입력해주세요."></div>
				<div class="div1"><input type="button" value="회원 제재" class="btn" onclick="MangeY();"></div>
			</div>
			<div id="div0">
				<div class="div3"><input type="text" id="Ymange" placeholder="제재 성공 여부 표시 / ex) 30일 글작성 정지" readonly="readonly"></div>
			</div>
		</div>
			<br/>
			<div id="cover">
			<div><div><b>회원 추방</b></div></div>
			<div id="div0">
				<div class="div2"><input type="text" id="input" placeholder="닉네임을 입력해주세요."></div>
				<div class="div1"><input type="button" value="회원 추방" class="btn"></div>
			</div>
			<div id="div0">
				<div class="div3"><input type="text" id="input" placeholder="회원 추방 성공 여부 표시" readonly="readonly"></div>
			</div>
		</div>
		<br/>
		<div id="cover">
			<div><div><b>제재 해제</b></div></div>
			<div id="div0">
				<div class="div2"><input type="text" id="NmangeNickname" placeholder="닉네임을 입력해주세요."></div>
				<div class="div1"><input type="button" value="제재 해제" class="btn" onclick="MangeN();"></div>
			</div>
			<div id="div0">
				<div class="div3"><input type="text" id="Nmange" placeholder="제재 해제 성공 여부 표시" readonly="readonly"></div>
			</div>
		</div>
		</div>
	</div>

</body>
</html>