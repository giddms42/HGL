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
<link rel="stylesheet" type="text/css" href="css/AdminUserInfo.css">
<body>

	<div id="container">
		<div>
		<div id="cover">
			<div><div><b>xx님의 활동내역</b></div></div>
			<br>
					<table>
						<col width="624px">
						<col width="624px">
						<tr>
							<td class="div1" id="ans">ID</td>
							<td class="div2" id="res">${dto.memberId}</td>
						</tr>
						<tr>
							<td class="div1" id="ans">닉네임</td>
							<td class="div2" id="res">${dto.memberNickname}</td>
						</tr>
					</table>
					<br/>
					<table>
						<col width="624px">
						<col width="624px">
						<tr onclick="javascript:opener.location.href='AdminSearchGG.do?memberNickName=${dto.memberNickname}&nowpage=1';self.close();" id="cursor">
							<td class="div2" id="ans">좋은글 게시판 작성글 갯수</td>
							<td class="div1" id="res">${ggCount}</td>
						</tr>
						<tr onclick="javascript:opener.location.href='AdminSearchFWLB.do?memberNickName=${dto.memberNickname}&nowpage=1';self.close();" id="cursor">
							<td class="div2" id="ans">위시리스트 게시판 작성글 갯수</td>
							<td class="div1" id="res">${fwlbCount}</td>
						</tr>
					</table>
		</div>
		</div>
	</div>

</body>
</html>