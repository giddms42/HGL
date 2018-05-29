<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/MemberSearch.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function IDSearch() {
	alert("아이디찾기클릭");
    var email = $("#email1").val();
    if (email == null || email == "") {
  	  alert("이메일을 입력해주세요")
    } else {
       $.ajax({
          url : "IDSearch.do",
          data:"email="+email,
          dataType : "text",

          success : function(msg) {
        	  var msgVal = $.trim(msg);
        	  $("#idVal").val(msgVal);
          },
          error : function() {
        	  alert("e-mail이 존재하지 않습니다.");
          }
       })
    }
 }
 
function PWSearch() {
    var email2 = $("#email2").val();
    var id2 = $("#id2").val();

    if (email2 == null || email2 == "") {
  	  alert("이메일을 입력해주세요");
    } else if (id2 == null || id2 == "") {
  	  alert("아이디를 입력해주세요");
    } else {
       $.ajax({
          url : "memberCertification.do",
          data: "email=" + $("#email2").val() + "&id="
                + $("#id2").val(),
          dataType : "text",
          success : function(msg) {
        	  var msgVal = $.trim(msg);
        	  if(msgVal == "t"){
        	  /* PwFindPopup(email2, id2); */   
        	  PwFindPopup(email2, id2); 
        	  /* self.close(); */
        	  /* location.href="MemberPwFind.do"; */
        	  }else{
        		  $("#pwVal").val("이메일, 아이디를 다시 확인해주세요."); 
        	  }
          },
          error : function() {
          	alert("없는 계정입니다.\n 이름,이메일,아이디를 다시 확인해주세요");
          }
       })
    }
 }
 
function PwFindPopup(email2, id2){
	/* var popupX = (window.screen.width/2)-(440/2);
	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음

	var popupY= (window.screen.height/2)-(200/2);
	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
	window.open("MemberPwFindForm.do?email="+email2+"&id="+id2,"", 'status=no, width=440, height=200, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY); */
	location.href="MemberPwFindForm.do?email="+email2+"&id="+id2;
	}
 
</script>
<body>

	<div id="container">
		<div>
		<div id="cover">
			<div><div><b>ID 찾기</b></div></div>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="E-Mail" class="input"></div>
				<div class="div2"><input type="text" class="input" placeholder="E-Mail을 입력해주세요." id="email1"></div>
			</div>
			<div id="div0">
				<div class="div2"><input type="text" class="input" placeholder="결과가 출력됩니다." readonly="readonly" id="idVal"></div>
				<div class="div1"><input type="button" value="ID 찾기" class="btn" onclick="IDSearch();"></div>
			</div>
		</div>
			<br/>
		<div id="cover">
			<div><div><b>PW 찾기</b></div></div>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="E-Mail" class="input"></div>
				<div class="div2"><input type="text" class="input" placeholder="E-Mail을 입력해주세요." id="email2"></div>
			</div>
			<div id="div0">
				<div class="div1"><input type="text" readonly="readonly" value="ID" class="input"></div>
				<div class="div2"><input type="text" class="input" placeholder="ID를 입력해주세요." id="id2"></div>
			</div>
			<div id="div0">
				<div class="div2"><input type="text" class="input" placeholder="결과가 출력됩니다." readonly="readonly" id="pwVal"></div>
				<div class="div1"><input type="button" value="PW 찾기" class="btn" onclick="PWSearch();"></div>
			</div>
		</div>
		</div>
	</div>

</body>
</html>