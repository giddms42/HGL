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
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="js/FChart.js"></script>
<script type="text/javascript">
google.charts.load('current', {'packages':['line']});
google.charts.setOnLoadCallback(drawChart);
</script>
</head>
<body>
		<div id="detail">
		    <header>
				<h3>{famName}님</h3>
			</header>
			
			<div id="famDetail">
				<div id="famInfoFom">
					<div>이름
						<input class="famInfo" type="text" value="${famDto.famName}님" readonly="readonly">
					</div>
					<div>생일
						<input class="famInfo" type="text" value="${famDto.famBirth }　　(${famDto.famLunar})" readonly="readonly">
					</div>
					<div>신장
						<input class="famInfo" type="text" value="${healthDto.famHeight}cm" readonly="readonly">
					</div>
					<div>체중
						<input class="famInfo" type="text" value="${healthDto.healthWeight}kg" readonly="readonly">
					</div>
					<div>혈압
						<input class="famInfo" type="text" value="${healthDto.healthShrbp}mg" readonly="readonly">
						<p style="margin-top: -20px; margin-left: 38px;"><input class="famInfo" type="text" value="${healthDto.healthRelbp}mg" readonly="readonly"></p>
					</div>
					
					<div>지병 항목 (최대 3개) <button type="button">변경</button></div>
					<div style="margin-left: 20px;">
						지병1<input class="disease" type="text" value="${famDto.famDisease1}">
						<button type="button">추천식단</button>
					</div>
					<div style="margin-left: 20px;">
						지병2<input class="disease" type="text" value="${famDto.famDisease2}">
						<button type="button">추천식단</button>
					</div>
					<div style="margin-left: 20px;">
						지병3<input class="disease" type="text" value="${famDto.famDisease3}">
						<button type="button">추천식단</button>
					</div>
					<div>
					
					</div>
				</div>
			</div>
			<div id="graph"></div>
		</div> 
</body>
</html>