<%@page import="com.lol.hgl.dao.CalDaoImple"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<%@page import="com.lol.hgl.dao.CalDao"%>
<%@page import="com.lol.hgl.dao.CalDaoImple"%>
<%@page import="com.lol.hgl.dto.calDto"%>
<%@page import="com.lol.hgl.dao.Util"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/CalList.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function(){
		$(".countView").hover(function(){
			var aCountView=$(this);
			var year=$(".y").text().trim();//년도
			var month=$(".m").text().trim();//월
			var cDate=aCountView.text().trim();//일
			var memberId = $("#memberId").val();

			var yyyyMMdd=year+isTwo(month)+isTwo(cDate);//8자리
			/* var memberId = $("login") */
			
			$.ajax({
				type:"post", //전송방식
				url:"CalListCountAjax.do", //요청url
				data:"memberId="+memberId+"&yyyyMMdd="+yyyyMMdd, //전송 파리미터
			//	data:{"memberId":memberId,"yyyyMMdd":yyyyMMdd},
			//	datatype:"",//서버에서 받는 데이터 타입
				async:true, //javascript 코드를 동기식으로 설정 (비동기/동기설정)
				success:function(val){
					  var r = $.trim(val);	
				//	var count=val.calCount;
					aCountView.after("<div class='cPreview'>"+r+"</div>");
				},
				error:function(){
					alert("서버통신실패!!");
				}
			});
		},function(){
			$(".cPreview").remove();//마우스가 나가면 삭제하기
		});
	});
	
	function isTwo(n){
		return n.length<2?"0"+n:n;
	}
</script>
<body>

<%
	String paramYear = request.getParameter("year");
	String paramMonth = request.getParameter("month");

	Calendar cal =Calendar.getInstance();
	//현재 년도
	int year = cal.get(Calendar.YEAR);
	//현재 월 (0~11)
	int month = cal.get(Calendar.MONTH)+1;
	
	//년도와 열 변경
	if(paramYear != null){
		year = Integer.parseInt(paramYear);
	}
	if(paramMonth != null){
		month = Integer.parseInt(paramMonth);
	}
	
	//12월에서 다음 달로 넘어가면
	if(month > 12){
		month = 1;
		year++;
	}
	//1월에서 이전 달로 넘어가면
	if(month < 1){
		month = 12;
		year--;
	}
	
	//현재 월의 1일이 어떤 요일인지 구하기
	//1.현재 년도,현재 월에 대한 1일을 셋팅
	cal.set(year,month-1,1);
	//2.1일의 요일
	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	
	//마지막날 구하기
	int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	
	//달력에 일정을 표현하기
	CalDao dao = new CalDaoImple();
	calDto dto = new calDto();
	String yyyyMM = year + Util.isTwo(String.valueOf(month));
	List<calDto> cList= dao.selectAll(dto.getMemberId(), yyyyMM);
%>

<body>
<input type="hidden" id="memberId" value="${login.memberId}"/>
	<table id="calendar">
		<caption>
			<a href="CalListForm.do?year=<%=year-1%>&month=<%=month%>">◁</a>
			<a href="CalListForm.do?year=<%=year%>&month=<%=month-1%>">◀</a>
			
			<span class="y"><%=year %></span>년
			<span class="m"><%=month %></span>월
			
			<a href="CalListForm.do?year=<%=year%>&month=<%=month+1%>">▶</a>
			<a href="CalListForm.do?year=<%=year+1%>&month=<%=month%>">▷</a>
		</caption>
		
		<tr>
			<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>
		</tr>
		<tr>
<%
			//현재 월의 시작일 전까지 빈칸
			for(int i=0 ; i < dayOfWeek-1 ; i++){
				out.print("<td>&nbsp;</td>");
			}
			
			//현재 월의 1일부터 마지막 일 까지
			for(int i = 1; i <= lastDay; i++){
%>
			<td>
				<a class="countView" style="color:<%=Util.fontColor(i,dayOfWeek)%>" href="CalController.do?command=calList&year=<%=year%>&month=<%=month%>&date=<%=i%>">
					<%=i %>
				</a>
				<a href="insertCalboard.jsp?year=<%=year%>&month=<%=month%>&date=<%=i%>&lastday=<%=lastDay%>">
					<img alt="일정추가" src="img/pen.png" style="with:15px;height:15px;">
				</a>
				<div class="cList">
					<%=Util.getCalView(i, cList) %>
				</div>
			</td>
<%
				//(dayOfWeek-1 : 공백 수 + i) : 현재 날짜
				if((dayOfWeek-1+i)%7 == 0){
					//줄바꿈 처리
					out.print("</tr><tr>");
				}
			}
			for(int i = 0 ; i < (7-(dayOfWeek - 1 + lastDay)%7)%7;i++){
				out.print("<td>&nbsp;</td>");
			}
%>
		</tr>
	</table>

</body>
</html>