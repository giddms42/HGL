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
<link rel="stylesheet" type="text/css" href="css/FWLList.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(function(){
	$("input[type=checkbox]").click(function(){
		 var checkValue = $(this).val();
		 if($(this).is(":checked")){
			 var wishChk=confirm("위시리스트를 달성하셨나요?")
			 if(wishChk == true){
				 $.ajax({
		               type:"post",
		               url : "FWLSuccess.do",
		               data: {checkValue : checkValue},
		               success : function() {
		            	   alert("위시리스트 달성을 축하드립니다.");
		            	   location.reload();
		               },
		               error:function(){
		             	   alert("ajax error");
		               }
		            });
			 }else{
				 alert("위시리스트를 달성해봅시다!");
				 $(this).prop('checked',false);
			 }
		 }else{
			 var wishChk=confirm("취소하시겠습니까?")
			 if(wishChk == true){
				 $.ajax({
		               type:"post",
		               url : "FWLSuccessCancel.do",
		               data: {checkValue : checkValue},
		               success : function() {
		            	   alert("취소되었습니다.");
		            	   $(this).prop("checked","false");
		            	   location.reload();
		               },
		               error:function(){
		             	   alert("ajax error");
		               }
		            });
			 }else{
				 $(this).prop('checked',true);
			 }
		 }
	});
	
	 $("button[name=DeleteButton]").click(function(){
		 var delIcon = $("button[name=DeleteButton]").attr("title");
		 if(delIcon=="y"){
			 $(".FWLDelete").css("display","inline");
			 $("button[name=DeleteButton]").attr('title','n');
		 }else if(delIcon=="n"){
			 $("button[name=DeleteButton]").attr('title','y');
			 $(".FWLDelete").css("display","none");
		 }
	 });
})
	function FWLinsert(){
		var popupX = (window.screen.width/2) - (600 / 2);
		var popupY= (window.screen.height/2)- (150);
		// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음
		window.name="Parent";
		window.open("FWLInsertForm.do?memberNo="+${login.memberNo},"위시리스트추가하기", 'status=no, width=600, height=150, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	}
	
	function shareWL(){
		var shareWLChk=confirm("위시리스트 게시판에 공유하시겠습니까?")
		if(shareWLChk==true){
			location.href='FWLShare.do?memberNickName=${login.memberNickname}';
		}else if(shareWLChk==false){
			return false;
		}
	}
	
</script>
</head>
<body>

	<div id="container">
		<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
		<div id="FWLListCenter">
			<div id="FWLList">
				<div id="topbutton">
					<button type="button" onclick="shareWL();">공유하기</button>
					<button type="button" onclick="FWLinsert();" style="margin-left: 425px;">+위시리스트 추가하기</button>
				</div>
				<form>
				<table style="width:750px; margin: auto;">
					<tr>
						<th width=40px; style="padding: 10px;">달성</th>
						<th style="text-align: center; max-width:585px;">위 시 리 스 트</th>
					</tr>
						<c:choose>
							<c:when test="${empty FWLList}">
							<tr>
								<td colspan="2" style="text-align: center;">등록된 위시리스트가 존재 하지 않습니다! 등록해주세요</td>
							</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${FWLList}" var="FwlDto">
								<tr>
									<c:choose>
										<c:when test="${FwlDto.fwlChk eq 'Y'}">
											<td><input name="check" type="checkbox" checked="checked" value="${FwlDto.fwlNo}"></td>
										</c:when>
										<c:otherwise>
											<td><input name="check" type="checkbox" value="${FwlDto.fwlNo}"></td>
										</c:otherwise>
									</c:choose>
									<td style="border-bottom: 1px solid black;">${FwlDto.fwlItem}
									<button type="button" class="FWLDelete" onclick="location.href='FWLDelete.do?fwlNo='+${FwlDto.fwlNo}+'&memberNo='+${login.memberNo}"><img class="FWLDelete-img" src="image/xButton.png"></button>
									</td>
								</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					<tr>
					</tr>
				</table>
				</form>	
				</div>
			<div style="width: 800px;"><button type="button" name="DeleteButton" title="y" style="float:right; margin: 10px;">삭제</button></div>
			</div>
		</div> 
</body>
</html>