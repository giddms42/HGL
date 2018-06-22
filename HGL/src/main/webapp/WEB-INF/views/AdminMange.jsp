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

function getOut(){
	var nickName = $("#getNickName").val();
	if(nickName==null || nickName==""){
		alert("닉네임을 입력해주세요");
	}else{
		 $.ajax({
	          url : "AdminMangeGetout.do",
	          data:"memberNickName="+nickName,
	          success : function(msg) {
	        	  var msgVal = $.trim(msg);
	        	  $("#getOut").val(msgVal);
	          }
	       })
	}
}
</script>
</head>
<link rel="stylesheet" type="text/css" href="css/AdminMange.css">
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
		<div>
			<div id="cover">
				<div class="backColor"></div>
				<div class="amTitle"><b>회원 제재</b></div>
				<div id="div0">
					<div class="div2"><input class="txtInput" type="text" id="YmangeNickname" placeholder="닉네임을 입력해주세요."></div>
					<div class="div3"><input class="txtRes" type="text" id="Ymange" placeholder="제재 성공 여부 표시 / ex) 30일 제재 성공" readonly="readonly"></div>
					<div class="div1"><input class="btn-3" type="button" value="회원 제재" onclick="MangeY();"></div>
				</div>
			</div>
				
			<div id="cover">
				<div class="backColor"></div>
				<div class="amTitle"><b>회원 추방</b></div>
				<div id="div0">
					<div class="div2"><input class="txtInput" type="text" id="getNickName" placeholder="닉네임을 입력해주세요."></div>
					<div class="div3"><input class="txtRes" type="text" id="getOut" placeholder="회원 추방 성공 여부 표시" readonly="readonly"></div>
					<div class="div1"><input class="btn-3" type="button" value="회원 추방" onclick="getOut();"></div>
				</div>
			</div>
			
			<div id="cover">
				<div class="backColor"></div>
				<div class="amTitle"><b>제재 해제</b></div>
				<div id="div0">
					<div class="div2"><input class="txtInput" type="text" id="NmangeNickname" placeholder="닉네임을 입력해주세요."></div>
					<div class="div1"><input class="btn-3" type="button" value="제재 해제" onclick="MangeN();"></div>
				</div>
				<div id="div0">
					<div class="div3"><input class="txtRes" type="text" id="Nmange" placeholder="제재 해제 성공 여부 표시" readonly="readonly"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>