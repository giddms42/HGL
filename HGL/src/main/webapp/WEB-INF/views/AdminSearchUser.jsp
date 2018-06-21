<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/AdminSearchUser.css">
<style>
body {
 background: url('image/back.png') no-repeat center center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

function AdminUserInfo(nickName){
   var popupX = (window.screen.width / 2) - (440 / 2);
   // 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
   var popupY= (window.screen.height /2) - (220 / 2);
   // 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
   window.open("AdminUserInfoForm.do?memberNickName="+nickName,"", 'width=440, height=220, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
   }

</script>
<body>
   <div id="container">
   <div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
   
   <div id="b">
      <div id="bodyMain">
         <div id="boardName">전체회원목록                                        총 회원 수 : ${memberCount}</div>
         <br/>
               <table border="1" bordercolor="white">
                  <col width="50" class="ab">
                  <col width="150">
                  <col width="150">
                  <col width="300">
                  <col width="70">
                  <tr>
                     <th class="th">번호</th>
                     <th class="th">아이디</th>
                     <th class="th">닉네임</th>
                     <th class="th">이메일</th>
                     <th class="th">제재여부</th>
                  </tr>
           			   <c:choose> 
	                 	<c:when test="${empty list}">
	                 		<c:forEach begin="0" end="9">
	                 		<tbody>
		                 		<tr>
		                 			<td colspan="5">--------------회원이 없습니다.--------------</td>
		                 		</tr>
	                 		</tbody>
	                 		</c:forEach>         	
	                 	</c:when>
	                 	<c:otherwise>
	                 		  <c:forEach items="${list}" var="dto" varStatus="i">
	                 		  <tbody>
	                		    <tr onclick="AdminUserInfo('${dto.memberNickname }');">
		                		  	<c:choose>
		                		  		<c:when test="${nowPage eq 1}">
											<td>${i.index+1}</td>
		                		  		</c:when>
		                		   		<c:otherwise>
		                		   			<td>${i.index+1+(nowPage-1)*10}</td>
		                		   		</c:otherwise>
									</c:choose>
									<td>${dto.memberId}</td>
									<td>${dto.memberNickname }</td>
									<td>${dto.memberEmail }</td>
									<td>${dto.memberProhibitChk }</td>
								</tr>
	                 		  </tbody>
							  </c:forEach>
	                 	</c:otherwise>
	                 </c:choose>
               </table>
               <br/>
                <div id="paging">
	          		<c:choose>
						<c:when test="${nowPage eq 1}">
							◀
						</c:when>
						<c:otherwise>
							<a href="AdminSearchUserForm.do?nowpage=${nowPage - 1}">◀</a>
						</c:otherwise>
					</c:choose> 
					<c:forEach begin="${startPage}" end="${endPage}" var="i">
						<a href="AdminSearchUserForm.do?nowpage=${i}"> 
						<c:choose>
							<c:when test="${i eq nowPage}">
								<strong style="text-shadow: 1px 1px 0px orange;">${i}</strong>
							</c:when>
							<c:otherwise>
								${i}
							</c:otherwise>
						</c:choose>
						</a>
					</c:forEach> 
					<c:choose>
						<c:when test="${nowPage eq pageCount}">
							▶
						</c:when>
						<c:otherwise>
							<a href="AdminSearchUserForm.do?nowpage=${nowPage + 1}">▶</a>
						</c:otherwise>
					</c:choose>
	            </div>
      </div>
   </div>
   
   <div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
   </div>
</body>
</html>