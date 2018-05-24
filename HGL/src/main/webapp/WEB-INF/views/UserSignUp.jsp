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
      var doc = document.getElementsByName("id")[0];
      if (doc.value == null || doc.value == "") {
         alert("ID를 입력해주세요")
      } else {
         open("TrioController?command=idChk&id=" + doc.value); // open : 새창을 띄어줌. 
      }
   }
   function idChkConfirm() { // id중복체크를를 우선적으로 하게 하는 기능.
      var chk = document.getElementsByName("id")[0].title;
      if (chk == "n") {
         alert("아이디 중복체크를 해주세요");
         document.getElementsByName("id")[0].focus();
      }
   }

   $(function() { // 비밀번호 검사
      var oldurl = document.referrer;
      $("input[name=returl]").val(oldurl);

      $("#userForm").submit(function() {

         var returnVar = true;
         if ($("input[name=pw]").val() != $("input[name=pwChk]").val()) {
            alert("비밀번호가  일치하지 않습니다. 다시 확인해주세요");
            document.getElementsByName("pwChk")[0].focus();
            return false;
         } else {
            var email = $("input[name=email]").val();
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
	      var chk = document.getElementsByName("id")[0].title;
	         if (chk == "n") {
	            alert("아이디 중복체크를 해주세요");
	            document.getElementsByName("id")[0].focus();
	            document.getElementsByClassName("tab")[0].value="";
	            document.getElementsByClassName("tab")[1].value="";
	            document.getElementsByClassName("tab")[2].value="";
	            document.getElementsByClassName("tab")[3].value="";
	         }
	   }
</script>
</head>
<body>
	<div class="container">
		<header>
			<h3>가입 정보 입력</h3>
			<div class="signUpText">로그인 정보 및 가입 정보를 입력하세요</div>
		</header>
	  <form action="TrioController" method="post" id="userForm">
      <input type="hidden" name="command" value="inseretUser" /> 
      <input type="hidden" name="returl" value="" />
	      <div class="registForm">
		      <div id="idchk"><input class="info" type="button" value="아이디 중복확인" onclick="idChk()"></div>
		      
		      <div>
		   	  	<label>아이디<br><input class="info" type="text" name="userid" required="required" placeholder="아이디를 입력해주세요"></label>
		      </div>
		      <div>
		      	<label>비밀번호<br><input class="info" type="text" name="userpw" required="required" placeholder="비밀번호를 입력해주세요"></label>
		      </div>
		      <div>
		     	 <label>닉네임<br><input class="info" type="text" name="userpwre" required="required" placeholder="비밀번호를 다시 입력해주세요"></label>
		      </div>
		      <div>
		      	<label>전화번호<br><input class="info" type="text" name="userphone" required="required" placeholder="휴대폰번호를 입력해주세요"></label>
		      	<br><input class="checkbox" type="checkbox" name="sns"><a style="vertical-align: 10px;">문자알림을 받으시겠습니까?</a>
		      </div>
		      <div>이메일<br>
		      	<label><input class="info" type="text" name="userid" required="required" placeholder="이메일을 입력해주세요"></label>
		      </div>
		      <div>주  소<br>
			      <select name="country" style="height: 37px;">
			      	<option value="" >도를 선택해주세요</option>
			      </select>
			      <select name="city" style="height: 37px;">
			      	<option value="">시를 선택해주세요</option>
			      </select>
			      <input class="info" type="text" name="userphone" required="required" placeholder="상세주소를 입력해주세요">
		      </div>
	      </div>
      </form>
    </div>
</body>
</html>