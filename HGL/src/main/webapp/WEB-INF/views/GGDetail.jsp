<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%>
<%  response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="css/GGDetail.css">
<style>
body {
 background: url('image/img.jpg') no-repeat center center fixed;
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 }
</style>
<body>

	<div id="container">
		<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>

		<div id="b">
			<div id="bodyMain">
				<form action="GGUpdateForm.do?ggNo=${dto.ggNo}" id="form"
					method="post">
					<br/>
					<table border="1" bordercolor="white">
						<col width="100">
						<tr>
							<td colspan="2" class="th">
								<div>좋은글 게시판 상세보기</div>
							</td>
						</tr>
						<tr>
							<td class="th">조회수</td>
							<td><input type="text" value="${dto.ggReadcnt }" readonly="readonly" class="Mtd"></td>
						</tr>
						<tr>
							<td class="th">작성일</td>
							<td><input type="text" value="<fmt:formatDate value="${dto.ggDate}" pattern="yyyy-MM-dd HH:mm"/>" readonly="readonly" class="Mtd"></td>
						</tr>
						<tr>
							<td class="th">제목</td>
							<td><input type="text" value="${dto.ggTitle }" readonly="readonly" class="Mtd"></td>
						</tr>
						<tr>
							<td class="th">작성자</td>
							<td><input type="text" value="${dto.ggWriter }" readonly="readonly" class="Mtd"></td>
						</tr>
						<tr>
							<td class="th">내용</td>
							<td>
							<textarea rows="20" cols="50" readonly="readonly" class="Mtd" style="resize: none;">${dto.ggCont}</textarea>
								<c:if test="${!empty imgList}">
									<div>
										<c:forEach items="${imgList}" var="ggImgDto">
											<img src="ggImg/${ggImgDto.ggImgStoreName}" style="width:100%; max-height: 30%;">
										</c:forEach>
									</div>
							</c:if>
							</td>
						</tr>
				
					</table>
					<div class="btn00">
						<input type="button" value="글목록" onclick="location.href='GGListForm.do?nowpage=1'" class="btn001">
						<input type="submit" value="글수정" class="btn002">
						<input type="button" value="글삭제" onclick="location.href='GGDelete.do?ggNo=${dto.ggNo}'" class="btn003">
					</div>
					<div id="paging">
					<br>
					<br>
					</div>
				</form>

					<br/>
					<c:if test="${!empty dto2}">
						<div id="cml">댓글 목록</div><br/>
							<c:forEach items="${dto2 }" var="ggcmDto">
							<div class="dv0">
								<div class="mdv">
									<div class="th2">작성자</div>
									<div class="td">${ggcmDto.ggcmWriter }</div>
									<div class="th2">작성일</div>
									<div class="td"><fmt:formatDate value="${ggcmDto.ggcmDate}" pattern="yyyy-MM-dd" /></div>
								</div>
								<div class="mdv">
									<div class="cont"><textarea rows="3" cols="" style="resize: none; overflow: hidden;" readonly="readonly">${ggcmDto.ggcmCont }</textarea></div>
								</div>
							</div>
							<div class="dv1">
								<input type="button" onclick="location.href='GGRepleyDelete.do?ggcmNo='+${ggcmDto.ggcmNo}+'&ggNo='+${ggcmDto.ggNo}" value="댓글삭제" id="Cbtn2">
							</div><br/>								
							</c:forEach>
					</c:if>

				<div id="comment">
					<div>
						<c:choose>
							<c:when test="${login != null}">
								<div class="replyBox">
									<form action="GGRepleyInsert.do" id="form" method="post">
										<input type="hidden" name="ggNo" value="${dto.ggNo}">
										<br />
										<table border="1" bordercolor="white">
											<col width="125" class="ab">
											<col width="800">
											<col width="150">
											<tr>
												<td colspan="3" class="th"><div>댓글 작성</div></td>
											</tr>
											<tr>
												<td><input type="text" name="ggcmWriter" value="${login.memberNickname}" id="cmtd"></td>
												<td><textarea rows="3" cols="" name="ggcmCont" style="resize: none; overflow: hidden;" placeholder="댓글 내용을 입력해주세요~" ></textarea></td>
												<td><input type="submit" value="댓글달기" id="Cbtn1"></td>
											</tr>
										</table>
									</form>
								</div>
							</c:when>
						</c:choose>
					</div>
				</div>
				<br>
			</div>
		</div>

		<div id="c"><%@ include file="/WEB-INF/views/Footer.jsp"%></div>
	</div>

</body>
</html>