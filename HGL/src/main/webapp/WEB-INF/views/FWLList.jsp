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

	function FWLinsert(){
		var popupX = (window.screen.width/2) - (600 / 2);
		var popupY= (window.screen.height/2)- (150);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		window.name="Parent";
		window.open("FWLInsertForm.do","위시리스트추가하기", 'status=no, width=600, height=150, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}

</script>
</head>
<body>

	<div id="container">
	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
		<button type="button" style="margin-left: 317px; margin-bottom: 10px; margin-top: 30px;">공유하기</button>
		<button type="button" onclick="FWLinsert();" style="margin-left: 425px;">+위시리스트 추가하기</button>
		
		<form>
		<table border="1" style="width:650px; margin: auto;">
         <tr>
            <th>달성</th>
            <th style="text-align: center;">위 시 리 스 트</th>
         </tr>
         <tr>
            <c:choose>
               <c:when test="${empty FWLList}">
                  <td width= 60px; style="text-align: center;"></td>
                  <td style="text-align: center;">등록된 위시리스트가 존재 하지 않습니다! 등록해주세요</td>
               </c:when>
               <c:otherwise>
                  <c:forEach items="${FWLList}" var="FwlDto">
                  <tr>
                     <c:choose>
                        <c:when test="${FwlDto.fwlChk eq 'Y'}">
                        <td width= 60px; style="text-align: center;"><input type="checkbox" checked="checked" style="width: 25px; height: 25px;"></td>
                        </c:when>
                        <c:otherwise>
                        <td width= 60px; style="text-align: center;"><input type="checkbox" style="width: 20px; height: 20px;"></td>
                        </c:otherwise>
                     </c:choose>
                     <td>${FwlDto.fwlItem}</td>
                    </tr> 
                  </c:forEach>
               </c:otherwise>
            </c:choose>
         </tr>
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