<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link href='https://fonts.googleapis.com/css?family=Ubuntu:400,700' rel='stylesheet' type='text/css'>
 <link rel="stylesheet" href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/148866/reset.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/style222.css">

  
</head>

<body>

  <body>
<main id="cd-main-content">
	<section id="cd-intro">
		<h1><b>행</b>복한 <b>가</b>족의 미<b>래</b></h1>

		<header class="cd-header">
			<a class="cd-menu-trigger" href="#main-nav">로그인<span></span></a>
		</header>
		<div class="cd-blurred-bg"></div>
	</section> <!-- cd-intro -->
</main>

<div class="cd-shadow-layer"></div>

<nav id="main-nav">
	<ul id="loginUl">
		<li id="loginMain">
				<form action="MemberLogin.do">
					<div id="loginImg">
						<div class="loginPadding">
							<span class="spanIdPw">ㅇ USERNAME　　　　　　　　　</span>
						</div>
						<div class="loginPadding">
							<input type="text" value="" placeholder=" 아이디를 입력해주세요.">
						</div>
						<div class="loginPadding">
							<span class="spanIdPw">ㅇ PASSWORD　　　　　　　　　</span>
						</div>
						<div class="loginPadding">
							<input type="text" value="" placeholder=" 비밀번호를 입력해주세요.">
						</div>
						<div class="loginBtnPd">
							<input class="loginBtn" id="loginBtn1" type="submit" value="Login">
						    <input class="loginBtn" id="loginBtn1" type="button" value="SignUp" onclick="location.href='MemberSignUpForm.do'">
			                <input class="loginBtn" id="loginBtn2" type="button" value="Forgot Password?" onclick="MemberSearch()">
						</div>
					<div id="loginImg2"></div>
					</div>
				</form>
		</li>
	</ul>
	<a href="#0" class="cd-close-menu">Close<span></span></a>
</nav>
</body>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="js/index.js"></script>




</body>

</html>
