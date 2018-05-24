<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/UserSignUp.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

   function idChk() { // 중복체크
      var doc = document.getElementsByName("userId")[0];
      if (doc.value == null || doc.value == "") {
         alert("ID를 입력해주세요")
      } else {
         open("TrioController?command=idChk&userId=" + doc.value); // open : 새창을 띄어줌. 
      }
   }
   function idChkConfirm() { // id중복체크를를 우선적으로 하게 하는 기능.
      var chk = document.getElementsByName("userId")[0].title;
      if (chk == "n") {
         alert("아이디 중복체크를 해주세요");
         document.getElementsByName("userId")[0].focus();
      }
   }

   $(function() { // 비밀번호 검사
      var oldurl = document.referrer;
      $("input[name=returl]").val(oldurl);

      $("#userForm").submit(function() {

         var returnVar = true;
         if ($("input[name=userPw]").val() != $("input[name=userChkpw]").val()) {
            alert("비밀번호가  일치하지 않습니다. 다시 확인해주세요");
            document.getElementsByName("userChkpw")[0].focus();
            return false;
         } else {
            var email = $("input[name=userEmail]").val();
            $.ajax({
               url : "TrioController?command=emailChk&email=" + email,
               async : false,
               success : function(res) {
                  var r = $.trim(res)
                  if (r == "t") {
                     $("#p").show();
                     returnVar = false;
                  }
               }
            });
            return returnVar;
         }
      });
   });
   
   function tabBlock(){
	      var chk = document.getElementsByName("userId")[0].title;
	         if (chk == "n") {
	            alert("아이디 중복체크를 해주세요");
	            document.getElementsByName("userId")[0].focus();
	            document.getElementsByName("userId")[0].value="";
	            document.getElementsByName("userPw")[0].value="";
	            document.getElementsByName("userChkpw")[0].value="";
	            document.getElementsByName("userNick")[0].value="";
	            document.getElementsByName("userPhone")[0].value="";
	            document.getElementsByName("userEmail")[0].value="";
	            document.getElementsByName("userAddr")[0].value="";
	         }
	   }
</script>
</head>
<body>
	  <div class="registForm">
	    <header>
			<h3>가입 정보 입력</h3>
			<div class="signUpText">로그인 정보 및 가입 정보를 입력하세요</div>
		</header>
	
	  <form action="TrioController" method="post" class="userForm">
      <input type="hidden" name="command" value="inseretUser" /> 
      <input type="hidden" name="returl" value="" />
		  <div>
	   	  	<label>아이디<br><input class="info" type="text" name="userId" title="n" required="required" placeholder="아이디를 입력해주세요"></label>
	    	<a id="idchk"><input class="infocheck" type="button" value="아이디 중복확인" onclick="idChk()"></a>
	      </div>
	      <br><div>
	      	<label>비밀번호<br><input class="info" type="text" name="userPw" onchange="tabBlock();" onclick="idChkConfirm();" 
	      	required="required" placeholder="비밀번호를 입력해주세요"></label>
	      </div>
	      <div>
	      <br><label>비밀번호 확인<br><input class="info" type="text" name="userChkpw" onchange="tabBlock();" onclick="idChkConfirm();" 
	      	required="required" placeholder="비밀번호를 다시 입력해주세요"></label>
	      </div>
	      <br><div>
	      	<label>닉네임<br><input class="info" type="text" name="userNick" onchange="tabBlock();" onclick="idChkConfirm();"
	      	required="required" placeholder="닉네임을 입력해주세요"></label>
	      	<a id="idchk"><input class="infocheck" type="button" value="닉네임 중복확인" onclick="idChk()"></a>
	      </div>
	      <br><div>
	      	<label>연락처<br><input class="info" type="text" name="userPhone" onchange="tabBlock();" onclick="idChkConfirm();"
	      	required="required" placeholder="휴대폰번호를 입력해주세요">
	      	<br><input class="checkbox" type="checkbox" name="sns"><a href="" class="sns">문자알림</a><a class="sns">을 받으시겠습니까?</a></label>
	      </div>
	      <br><div>이메일<br>
	      	<label><input class="info" type="text" name="userEmail" onchange="tabBlock();" onclick="idChkConfirm();"
	      	required="required" placeholder="이메일을 입력해주세요"></label>
	      	<a id="idchk"><input class="infocheck" type="button" value="이메일 중복확인" onclick="idChk()"></a>
	      </div>
	      <br><div>주  소<br>
		      <select name="country" style="height: 37px;" required="required">
		      	<option value="" >도를 선택해주세요</option>
		      </select>
		      <select name="city" style="height: 37px;" required="required">
		      	<option value="">시를 선택해주세요</option>
		      </select>
	      	  <br><input class="addr" type="text" name="userAddr" required="required" placeholder="상세주소를 입력해주세요" style="vertical-align: 1px;">
	      </div>
	      <div style="margin-top: 10%; width:370px;" align="center">
	      <input type="submit" value="가입하기">
	      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	      <input type="button" value="취소하기"> 
	      </div>
   		</form>
     </div> 
</body>
</html>