<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	function MemberSearch(){
		var popupX = (window.screen.width/2) - (440 / 2);
		var popupY= (window.screen.height/2)- (240/2);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		window.name="Parent";
		window.open("MemberSearchForm.do","", 'status=no, width=440, height=240, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		}

</script>
</head>
<body>

	<div style="width: 800px; border: 1px dotted red; margin: auto;">
		<input type="button" value="공유하기" style="margin-left: 75px;">
		<input type="button" value="+위시리스트 추가하기" onclick="window.open('FWLInsertForm.do?memberNo='+${memberNo},'위시리스트추가하기','width=600,height=150,location=no,status=no,scrollbars=yes')" style="margin-left: 425px;">
		
		<form>
		<table border="1" style="width:650px; margin: auto;">
			<tr>
				<th>달성여부</th>
				<th style="text-align: center;">위 시 리 스 트</th>
			</tr>
				<c:choose>
					<c:when test="${empty FWLList}">
					<tr>
						<td></td>
						<td style="text-align: center;">등록된 위시리스트가 존재 하지 않습니다! 등록해주세요</td>
					</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${FWLList}" var="FwlDto">
						<tr>
							<c:choose>
								<c:when test="${FwlDto.fwlChk eq 'Y'}">
								<td>	<input type="checkbox" checked="checked"> </td>
								</c:when>
								<c:otherwise>
								<td>	<input type="checkbox" >	</td>
								</c:otherwise>
							</c:choose>
							<td>${FwlDto.fwlItem}</td>
						</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
		
			<tr>
				<td colspan="2">
					<input type="button" value="삭제" style="float:right;">  
					<input type="submit" value="달성여부 저장" style="float:right;"><!-- 추가하기하고 저장을 누르기위해서 -->
				</td>
			</tr>
		</table>
		</form>	
	
	</div>
</body>
</html>