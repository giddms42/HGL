<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/FamDetail.css">
</head>
<body>
<div id="famDetail">
		<div id="detail">
		    <header>
				<h3>{famName}님</h3>
			</header>
			
			<form id="regist" action="MemberSignUp.do" method="post" class="userForm" novalidate>
				<ul>
					<li>이름
						<input class="famInfo" type="text" value="famName" required="required" readonly="readonly">
					</li>
					<li>생일
						<input class="famInfo" type="text" value="famBrithday" required="required" readonly="readonly">
					</li>
					<li style="margin-top: -30px; margin-left: 60px;">
						<label><input class="radi" type="radio" name="lunarSolar" value="양력" readonly="readonly">양력</label>
						<label><input class="radi" type="radio" name="lunarSolar" value="음력" readonly="readonly">음력</label>
					</li>
					<li>신장
						<input class="famInfo" type="text" value="tall" required="required" readonly="readonly">
					</li>
					<li>체중
						<input class="famInfo" type="text" value="weight" required="required" readonly="readonly">
					</li>
					<li>혈압
						<input class="famInfo" type="text" value="systolic+mg" readonly="readonly">
						<p style="margin-top: -20px; margin-left: 38px;"><input class="famInfo" type="text" value="diastole+mg" readonly="readonly"><p>
					</li>
				</ul>
				<ul>
					<li>지병 항목 (최대 3개) <input type="button" value="변경하기"></li>
					<li>
						지병1<input class="disease" type="text" value="당뇨병">
					</li>
					<li>
						지병2<input class="disease" type="text" value="당뇨병">
					</li>
					<li>
						지병3<input class="disease" type="text" value="당뇨병">
					</li>
				</ul>
			</form>
		</div>
		<div id="graph">
		
		</div>
     </div> 
</body>
</html>