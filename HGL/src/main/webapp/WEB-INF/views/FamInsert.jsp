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
</head>
<body>
<div class="famRegistForm">
	    <header>
			<h3>가족정보 등록</h3>
			<div class="signUpText">가정 정보를 입력하세요</div>
		</header>
		
		<form id="regist" action="FamInsert.do" method="post" class="userForm" novalidate>
			<ul>
				<li>이름
					<input class="famInfo" type="text" name="famName" required="required" placeholder="이름를 입력해주세요">
				</li>
				<li>생일
					<input class="famInfo" type="text" name="famBrithday" required="required" placeholder="생일를 입력해주세요">
				</li>
				<li style="margin-top: -30px; margin-left: 60px;">
					<label><input class="radi" type="radio" name="lunarSolar" value="양력">양력</label>
					<label><input class="radi" type="radio" name="lunarSolar" value="음력">음력</label>
				</li>
				<li>신장
					<input class="famInfo" type="text" name="tall" required="required" placeholder="cm">
				</li>
				<li>체중
					<input class="famInfo" type="text" name="weight" required="required" placeholder="kg">
				</li>
				<li>혈압
					<input class="famInfo" type="text" name="systolic" placeholder="수축기를 숫자만 입력해주세요">
					<p style="margin-top: -20px; margin-left: 38px;"><input class="famInfo" type="text" name="diastole" placeholder="이완기를 숫자만 입력해주세요"><p>
				</li>
				
				<li>지병 항목 (최대 3개)</li>
				<li>
					<input class="disease" type="checkbox" value="당뇨병"><a>당뇨병</a>
					<input class="disease" type="checkbox" value="심근경색증"><a>심근경색증</a>
					<input class="disease" type="checkbox" value="심부전증"><a>심부전증</a>
				</li>
				<li>
					<input class="disease" type="checkbox" value="지방간"><a>지방간</a>
					<input class="disease" type="checkbox" value="골다공증"><a>골다공증</a>
					<input class="disease" type="checkbox" value="알츠하이머"><a>알츠하이머</a>
				</li>
				<li>
					<input class="disease" type="checkbox" value="빈혈"><a>빈혈</a>
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
			<div>
				<input type="submit" value="등록하기">
				<input type="button" value="등록취소">
			</div>
		</form>
     </div> 

</body>
</html>