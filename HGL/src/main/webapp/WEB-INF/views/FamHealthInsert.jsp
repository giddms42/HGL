<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가족정보 등록</title>
<link rel="stylesheet" type="text/css" href="css/FamHealthInsert.css">
</head>
<body>
	  <div class="famRegistForm">
	    <header>
			<h3>가족정보 등록</h3>
			<div class="signUpText">가정 정보를 입력하세요</div>
		</header>
	
		<form id="regist" action="MemberSignUp.do" method="post" class="userForm" novalidate>
			<ul>
				<li>이름
					<input type="text" class="famInfo" placeholder="이름를 입력해주세요">
				</li>
				<li>생일
					<input type="text" class="famInfo" placeholder="생일를 입력해주세요">
				</li>
				<li>
					<input type="radio" value="양력"><a>양력</a>
					<input type="radio" value="음력"><a>음력</a>
				</li>
				<li>신장
					<input type="text" class="famInfo" placeholder="cm">
				</li>
				<li>체중
					<input type="text" class="famInfo" placeholder="kg">
				</li>
				<li>혈압
					<input type="text" class="famInfo" placeholder="수축기를 숫자만 입력해주세요">
					<input type="text" class="famInfo" placeholder="이완기를 숫자만 입력해주세요">
				</li>
				
				<li>지병 항목 (최대 3개)</li>
				<li>
					<input class="disease" type="checkbox" value="당뇨병"><a>당뇨병</a>
					<input class="disease" type="checkbox" value="심근경색증"><a>심근경색증</a>
					<input class="disease" type="checkbox" value="심부전증"><a>심부전증</a>
					<input class="disease" type="checkbox" value="골다골증"><a>골다골증</a>
				</li>
				<li>
					<input class="disease" type="checkbox" value="지방간"><a>지방간</a>
					<input class="disease" type="checkbox" value="빈혈"><a>빈혈</a>
					<input class="disease" type="checkbox" value="알츠하이머"><a>알츠하이머</a>
				</li>
				<li>
					<input class="disease" type="checkbox" value="암치료 유무"><a>암치료 유무</a>
					<select style="height: 35px; width: 80px; text-align: center;">
						<option value="간암">간암</option>
						<option value="갑상선암">갑상선암</option>
						<option value="대장암">대장암</option>
						<option value="위암">위암</option>
						<option value="유방암">유방암</option>
						<option value="전립선암">전립선암</option>
					</select>
				</li>
			</ul>
		</form>
     </div> 


</body>
</html>