<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지병항목 변경하기</title>
</head>
<body>
	
	<div id="diseaseUpdate">
		<form action="">
		<div id="disList">	
		<div style="text-align: center;"><b>지병 항목 (최대 3개)</b></div>
		<table style="margin: auto;">
			<tr>
				<td><input class="dis" type="checkbox" value="알츠하이머">알츠하이머</td>
				<td><input class="dis" type="checkbox" value="지방간">지방간</td>
				<td><input class="dis" type="checkbox" value="당뇨병">당뇨병</td>
				<td><input class="dis" type="checkbox" value="빈혈">빈혈</td>
			</tr>
			<tr>
				<td><input class="dis" type="checkbox" value="심근경색증">심근경색증</td>
				<td><input class="dis" type="checkbox" value="심부전증">심부전증</td>
				<td><input class="dis" type="checkbox" value="골다공증">골다공증</td>
			</tr>
			<tr>
				<td colspan="4">
				<input class="dis" type="checkbox" id="chkCancer" value="">암
				<select onchange="change(this.options[this.selectedIndex].value);" id="diseSelect">
					<option value="">종류를 선택하세요</option>
					<option value="간암">간암</option>
					<option value="갑상선암">갑상선암</option>
					<option value="대장암">대장암</option>
					<option value="위암">위암</option>
					<option value="유방암">유방암</option>
					<option value="전립선암">전립선암</option>
				</select>
				</td>
			</tr>
		</table>	
		</div>
		</form>
   	</div>	
</body>
</html>