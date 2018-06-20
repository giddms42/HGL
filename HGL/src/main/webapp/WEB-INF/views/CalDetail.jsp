<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@page import="com.lol.hgl.dao.Util"%>
<%@page import="com.lol.hgl.dto.calDto"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
 body {
 background: url('image/back.png') no-repeat center center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<%
	calDto dto=(calDto)request.getAttribute("dto");

	Util util=new Util();
	util.setToDates(dto.getCalSch());
	
	Calendar cal =Calendar.getInstance();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH)+1;
	
	int Uyear=Integer.parseInt(dto.getCalSch().substring(0, 4));
	int Umonth=Integer.parseInt(dto.getCalSch().substring(4, 6));
	int Udate=Integer.parseInt(dto.getCalSch().substring(6, 8));
	int Uhour=Integer.parseInt(dto.getCalSch().substring(8, 10));
	int Umin=Integer.parseInt(dto.getCalSch().substring(10));
	
%>

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

function Up(){
	$("#Up").show();
	$("#Dt").hide();
}

function setInterval2(){
	$("#Up").hide();
	$("#Dt").show();
}

function back(){ //멤버 닉네임 추가해서
	alert("창모드뒤로가기");
	var memberNickname = $("#memberNickname").val();
	var memberId = $("#memberId").val();
	var year = $("#year").val(); // 값 잘들어옴
	var month = $("#month").val();
	window.opener.top.location.href="CalListForm.do?memberNickname="+memberNickname+"&memberId="+memberId+"&year="+year+"&month="+month;
	window.close()
	/* location.href="CalListForm.do?memberNickname="+memberNickname+"&memberId="+memberId+"&year="+year+"&month="+month; */
	/* opener.location.reload(); */
	/* self.close(); */
}

function del(){
	alert("창모드델리트");
	var calNo = $("#calNo").val();
	var memberId = $("#memberId").val();
	var year = $("#year").val(); // 값 잘들어옴
	var month = $("#month").val();
	alert(calNo);
	window.opener.top.location.href="CalDelete.do?calNo="+calNo+"&memberId="+memberId+"&year="+year+"&month="+month;
	window.close()
	/* location.href="CalDelete.do?calNo="+calNo+"&memberId="+memberId+"&year="+year+"&month="+month;
	opener.location.reload();
	self.close(); */
}

function upOk(){
	alert("창모드업데이트");
	var calNo = $("#calNo").val();
	var year = $("#year").val(); // 값 잘들어옴
	var month = $("#month").val();
	var date = $("#date").val();
	var hour = $("#hour").val();
	var min = $("#min").val();
	var calTitle = $("#calTitle").val();
	var calMemo = $("#calMemo").val();
	var calSMS = $("#calSMS").val();
	var memberId = $("#memberId").val();
	alert(calNo);
	window.opener.top.location.href="CalUpdate.do?calNo="+calNo+"&memberId="+memberId+"&year="+year+"&month="+month+"&date="+date+"&hour="+hour+"&min="+min+"&calTitle="+calTitle+"&calMemo="+calMemo+"&calSMS="+calSMS;
	window.close();
}

</script>
<link rel="stylesheet" type="text/css" href="css/CalDetail.css">
</head>	
<body>

	
<div id="Dt">
<h1>일정 상세보기</h1>
<div id="CalForm0">
	<div id="backColor"></div>
	<table id="table">
			<col width="100">
			<col width="400">
			<tr>
				<th class="thPadding">작성자</th>
				<td><input id="inputSize" class="txtWidth" type="text" name="memberNickname" value="<%=dto.getMemberNickname()%>" readonly="readonly" /></td>
			</tr>
			<tr>
				<th class="thPadding">날짜</th>
				<td><input id="inputSize" class="txtWidth" type="text" name="calTitle" value="<%=util.getToDates()%>" readonly="readonly"/></td>
			</tr>
			<tr>
				<th class="thPadding">제목</th>
				<td><input id="inputSize" class="txtWidth" type="text" name="calTitle" value="<%=dto.getCalTitle()%>" readonly="readonly"/></td>
			</tr>
			<tr>
				<th class="thPadding">내용</th>
				<td style="padding-left: 3.4px;"><textarea rows="10" cols="53" readonly="readonly" style="resize: none;"><%=dto.getCalMemo()%></textarea> </td>
			</tr>
			<tr>
				<th class="thPadding2">문자알림</th>
				<td>
					<div id="radioIn">
					<input id="inputSize2" type="text" value="수신동의 : <%=dto.getCalSMS() %>">
					</div>
				
					<div>
						<input class="btn-3" type="button" value="수정" onclick="Up();"/>
						<input class="btn-3" type="button" value="삭제"	 onclick="del();"/>
						<input class="btn-3" type="button" value="돌아가기" onclick="back();"/>
					</div>
				</td>
			</tr>
				
		</table>
</div>
</div>
<div id="Up">
<h1>일정 수정하기</h1>
<div id="CalForm0">
	<form action="CalUpdate.do" method="post">
		<input type="hidden" id="calNo" name="calNo" value="<%=dto.getCalNo()%>"/>
		<input type="hidden" id="year" name="year" value="<%=year%>"/>
		<input type="hidden" id="month" name="month" value="<%=month%>"/>
		<input type="hidden" id="memberId" name="memberId" value="<%=dto.getMemberId()%>"/>
		<input type="hidden" id="memberNickname" name="memberNickname" value="<%=dto.getMemberNickname()%>"/>
		<table id="table">
			<tr>
				<th>닉넴</th>
				<td><%=dto.getMemberNickname()%></td>
			</tr>
			<tr>
				<th>일정</th>
				<td>
					<select name="year">
						<%
							for(int i=year-5; i<year+5;i++){
							%>
							<option value="<%=i%>" <%=Uyear==i?"selected":""%>><%=i%></option>
							<%
							}
						%>
					</select>년
					<select name="month">
						<%
							for(int i=1;i<13;i++){
								%>
								<option value="<%=i%>" <%=Umonth==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>월
					<select name="date" id="date">
						<%
							for(int i=1;i<=31;i++){
								%>
								<option value="<%=i%>" <%=Udate==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>일
					<select name="hour" id="hour">
						<%
							for(int i=0;i<24;i++){
								%>
								<option value="<%=i%>" <%=Uhour==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>시
					<select name="min" id="min">
						<%
							for(int i=0;i<60;i++){
								%>
								<option value="<%=i%>" <%=Umin==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>분
				</td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" id="calTitle" name="calTitle" value="<%=dto.getCalTitle()%>"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="60" id="calMemo" name="calMemo"><%=dto.getCalMemo()%></textarea> </td>
			</tr>
			<tr>
				<td colspan="2">문자수신여부 : 
				Y<input type="radio" value="Y" name="calSMS" id="calSMS"/>
				N<input type="radio" value="N" name="calSMS" id="calSMS"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input class="btn-3" type="submit" value="수정완료"/ onclick="upOk();">
					<input class="btn-3" type="button" value="돌아가기" onclick="back();"/>
				</td>
			</tr>
		</table>
	</form>
</div>
</div>
</body>
</html>