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

</script>
<link rel="stylesheet" type="text/css" href="css/CalDetail.css">
</head>	
<body>

<div id="Dt">
<h1>지옥의문</h1>
	<table border="1">
		<tr>
			<th>닉넴</th>
			<td><%=dto.getMemberNickname()%></td>
		</tr>
		<tr>
			<th>일정</th>
			<td><%=util.getToDates()%></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=dto.getCalTitle()%></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea rows="10" cols="60" readonly="readonly"><%=dto.getCalMemo()%></textarea> </td>
		</tr>
		<tr>
			<td colspan="2">문자수신여부 : <%=dto.getCalSMS() %></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="수정" 
				onclick="Up();"/>
				<input type="button" value="삭제" 
				onclick="location.href='CalDelete.do?calNo=<%=dto.getCalNo()%>&memberId=${login.memberId }&year=<%=year %>&month=<%=month %>'"/>
				<input type="button" value="돌아가기" onclick="location.href='CalListForm.do?memberId=${login.memberId }&year=<%=year %>&month=<%=month %>'"/>
			</td>
		</tr>
	</table>
</div>

<div id="Up">
<h1>일정수정하기</h1>
	<form action="CalUpdate.do" method="post">
		<input type="hidden" name="calNo" value="<%=dto.getCalNo()%>"/>
		<input type="hidden" name="memberId" value="<%=dto.getMemberId()%>"/>
		<input type="hidden" name="memberNickname" value="<%=dto.getMemberNickname()%>"/>
		<table border="1">
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
					<select name="date">
						<%
							for(int i=1;i<=31;i++){
								%>
								<option value="<%=i%>" <%=Udate==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>일
					<select name="hour">
						<%
							for(int i=0;i<24;i++){
								%>
								<option value="<%=i%>" <%=Uhour==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>시
					<select name="min">
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
				<td><input type="text" name="calTitle" value="<%=dto.getCalTitle()%>"/></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="60" name="calMemo"><%=dto.getCalMemo()%></textarea> </td>
			</tr>
			<tr>
				<td colspan="2">문자수신여부 : 
				Y<input type="radio" value="Y" name="calSMS"/>
				N<input type="radio" value="N" name="calSMS"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="수정완료"/>
					<input type="button" value="돌아가기" onclick="location.href='CalListForm.do?memberId=${login.memberId }&year=<%=year %>&month=<%=month %>'"/>
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>