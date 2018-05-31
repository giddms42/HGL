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
<body>
	<h2 style="text-align: center">{OOO님의 위시리스트입니다}</h2>
	<div style="width: 800px; min-height:700px; height: 100%; margin: auto; border:1px solid pink;" >
		<div style="margin-bottom: 30px;"><br>		
			<input type="text" value="조회수" style="float:right"><br>
			<input type="date" value="공유일" style="float:right"><br><br>
			<div style="margin:auto; width: 700px; min-height: 500px; height: 100%; border-top: 2px solid black; border-bottom: 2px solid black;">
				여기는 위시리스트가 공유되는 내용입니다.
			</div>
			<div style="margin: auto; width: 700px;">
				<button type="button">목록으로</button>
				<button type="button" style="float:right">삭제하기</button>
			</div>
		</div>
		
		<!-- 댓글창 -->
		
		<div class="qaUpdate" id="commentBox">
		
			<div style="width:600px; margin: auto; mar">
				<span>작성자: ${commentDto.wNickName}</span>
				<span style="float:right;">작성일:　<fmt:formatDate value="{commentDto.regDate}" pattern="yyyy-MM-dd"/></span>
	       		<div style="border-bottom: 1px solid #BDBDBD; margin-bottom: 10px; margin-top: 15px;">sdfsdafaasdfsdafjlnsdafjksdavfjkasndvkj</div>
	      		<button type="button" style="float:right;">삭제</button>
	      		<button type="button" style="float:right;">수정</button>
			</div>
			
			<div style="width:600px; margin: auto; mar">
				<span>작성자: ${commentDto.wNickName}</span>
				<span style="float:right;">작성일:　<fmt:formatDate value="{commentDto.regDate}" pattern="yyyy-MM-dd"/></span>
	       		<div style="border-bottom: 1px solid #BDBDBD; margin-bottom: 10px; margin-top: 15px;">sdfsdafaasdfsdafjlnsdafjksdavfjkasndvkj</div>
	      		<button type="button" style="float:right;">삭제</button>
	      		<button type="button" style="float:right;">수정</button>
			</div>
			
			<div style="width:600px; margin: auto; mar">
				<span>작성자: ${commentDto.wNickName}</span>
				<span style="float:right;">작성일:　<fmt:formatDate value="{commentDto.regDate}" pattern="yyyy-MM-dd"/></span>
	       		<div style="border-bottom: 1px solid #BDBDBD; margin-bottom: 10px; margin-top: 15px;">sdfsdafaasdfsdafjlnsdafjksdavfjkasndvkj</div>
	      		<button type="button" style="float:right;">삭제</button>
	      		<button type="button" style="float:right;">수정</button>
			</div>
			
			<hr>
			<div style="margin:auto; width: 600px;">
				<h3>댓글작성</h3>
				<input type="text" value="로그인 ID의 닉네임" style="margin-bottom: 10px;"><br>
				<textarea placeholder="입력할 댓글을 작성해주세요" style="width: 500px; height:120px; overflow:visible; resize:none;"></textarea>
				<button style="width:80px; height:50px; vertical-align: top;">댓글작성</button>
			</div>
		</div>
	</div>

</body>
</html>