<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@page import="com.lol.hgl.dao.Util"%>
<%@page import="com.lol.hgl.dto.calDto"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	calDto dto=(calDto)request.getAttribute("dto");

	Util util=new Util();
	util.setToDates(dto.getCalSch());
%>
<body>

<h1>지옥의문</h1>
<table border="1">
	<tr>
		<th>ID</th>
		<td><%=dto.getMemberId()%></td>
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
		<td colspan="2">
			<input type="button" value="수정" 
			onclick="location.href='CalController.do?command=updateForm&seq=<%=dto.getCalNo()%>'"/>
			<input type="button" value="삭제" 
			onclick="location.href='CalController.do?command=mulDel&chk=<%=dto.getCalNo()%>'"/>
			<input type="button" value="돌아가기" onclick="location.href='calendar.jsp'"/>
		</td>
	</tr>
</table>
</body>
</html>