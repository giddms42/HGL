<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<link rel="stylesheet" href="css/CalInsert.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">	
	function bb(){
		if($("input[name=calTitle]").val()==null || $("input[name=calTitle]").val()==""){
			swal("제목을 입력해주세요");
			return false;
		}else{
			var year = $("select[name=year]").val();
			var month= $("select[name=month]").val();
			var date = $("select[name=date]").val();
			var memberId = $("input[name=memberId]").val();
			
			$.ajax({
				type:"post", //전송방식
				url:"DayListCountAjax.do", //요청url
				data:"memberId="+memberId+"&year="+year+"&month="+month+"&date="+date,
				success:function(val){
					var r = $.trim(val);	
					var count = parseInt(r);
					if(count>=3){
						alert("일정은 최대 3개까지 입력 가능합니다.");
					}else{
						var params = $("#CalForm").serialize();
						$.ajax({
							url : "CalInsert.do",
							data : params,
							type : 'POST',
							success : function(str)
									{				
										swal("일정이 작성되었습니다.");
										opener.location.reload();
										self.close();
									}, error : function(statusCode){opener.location.reload();
										self.close();
									}
						});
					}
				},
				error:function(){
					alert("bb() ajax error");
				}
			});
			
		}

	}
	
	function back(){
		var memberNickname = $("input[name=memberNickname]").val();
		var memberId = $("input[name=memberId]").val();
		var year =  $("select[name=year]").val();
		var month =  $("select[name=month]").val();
		window.opener.top.location.href="CalListForm.do?memberNickname="+memberNickname+"&memberId="+memberId+"&year="+year+"&month="+month;
		window.close()
	}
	
	
</script>
</head>
<%
	int year=Integer.parseInt(request.getParameter("year"));
	int month=Integer.parseInt(request.getParameter("month"));
	int date=Integer.parseInt(request.getParameter("date"));
	int lastDay=Integer.parseInt(request.getParameter("lastDay"));
	String memberId = request.getParameter("memberId");
	String memberNickname = request.getParameter("memberNickname");
	
	Calendar cal=Calendar.getInstance();
	int hour=cal.get(Calendar.HOUR_OF_DAY);
	int min=cal.get(Calendar.MINUTE);
%>
<style>
 body {
 background: url('image/back.png') no-repeat center center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<body>
<h1>일정작성하기</h1>
<div id="CalForm0">
	<div id="backColor"></div>
	<form id="CalForm">
	<input type="hidden" name="memberId" value="<%=memberId %>"/>
	<input type="hidden" name="lastDay" value="<%=lastDay %>">
		<table id="table">
			<col width="100">
			<col width="400">
			<tr>
				<th class="thPadding">작성자</th>
				<td><input style="padding-left: 2px;" id="inputSize" class="txtWidth" type="text" name="memberNickname" value="<%=memberNickname %>" readonly="readonly" /></td>
			</tr>
			<tr>
				<th class="thPadding">날　짜</th>
				<td style="padding-left: 3.4px;">
					<select name="year">
						<%
							for(int i=year-5; i<year+5;i++){
							%>
							<option value="<%=i%>" <%=year==i?"selected":""%>><%=i%></option>
							<%
							}
						%>
					</select>년
					<select name="month">
						<%
							for(int i=1;i<13;i++){
								%>
								<option value="<%=i%>" <%=month==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>월
					<select name="date">
						<%
							for(int i=1;i<=lastDay;i++){
								%>
								<option value="<%=i%>" <%=date==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>일
					<select name="hour">
						<%
							for(int i=0;i<24;i++){
								%>
								<option value="<%=i%>" <%=hour==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>시
					<select name="min">
						<%
							for(int i=0;i<60;i++){
								%>
								<option value="<%=i%>" <%=min==i?"selected":""%>><%=i%></option>
								<%
							}
						%>
					</select>분
				</td>
			</tr>
			<tr>
				<th class="thPadding">제　목</th>
				<td><input style="padding-left: 2px;" id="inputSize" class="txtWidth" type="text" name="calTitle"/></td>
			</tr>
			<tr>
				<th class="thPadding">내　용</th>
				<td style="padding-left: 3.4px;"><textarea rows="10" cols="53" name="calMemo" style="resize: none;"></textarea> </td>
			</tr>
			<tr>
				<th class="thPadding2">문자알림</th>
				<td style="padding-left: 1.5px;">
					<div id="radioIn"><input id="inputSize2" type="text" value="수신동의　 수신거부"><input id="radio1" type="radio" value="Y" name="calSMS"/><input id="radio2" type="radio" value="N" name="calSMS" checked="checked"/></div>
					<div>
						<input type="button" class="btn-3" onclick="bb();" value="일정작성"/>
						<input class="btn-3" type="button" value="돌아가기" 
						onclick="back();"/>
					</div>
				</td>
			</tr>
				
		</table>
	</form>
</div>

</body>
</html>