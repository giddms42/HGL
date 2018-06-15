<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/FWLBList.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
</script>
</head>
<body>

<div style="padding:30px; background-color: #F1F1F1;">
	<div id="a"><%@ include file="/WEB-INF/views/Header.jsp"%></div>
	<div id="FWLBListCenter">
		<div class="table">
			<div class="headertext">
				위시리스트 게시판
			</div>
			<table id="FWLBtable" style="margin: auto; width:800px;">
					<col width="100">
					<col width="300">
					<col width="120">
					<col width="140">
					<col width="120">
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<c:choose>
					<c:when test="${empty FWLBList }">
					<c:forEach begin="0" end="9">
					<tr>
						<td colspan="5" style="text-align:center;">----------- 공유된 위시리스트가 없습니다 ------------</td>
					</tr>
					</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach items="${FWLBList}" var="fwlbDto">
						<tr>
							<td>${fwlbDto.fwlbRowNum}</td>
							<td><a href="FWLBDetail.do?fwlbWriter=${fwlbDto.fwlbWriter}&count=1&fwlbNo=${fwlbDto.fwlbNo}">${fwlbDto.fwlbTitle}</a></td>
							<td>${fwlbDto.fwlbWriter}</td>
							<td><fmt:formatDate value="${fwlbDto.fwlbDate}" pattern="yyyy-MM-dd"/></td>
							<td>${fwlbDto.fwlbReadcnt}</td>
						</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
			<div id="FWLB_Paging">
				<c:choose>
					<c:when test="${nowPage eq 1}">
							<a class="prev" title="이전페이지">◀ PREV</a>
						</c:when>
					<c:otherwise>
						<a class="prev" title="이전페이지"
							href="FWLBList.do?nowpage=${nowPage - 1}">◀ PREV
						</a>
					</c:otherwise>
				</c:choose> 
				<c:forEach begin="${startPage}" end="${endPage}" var="i">
					<a class="num" href="FWLBList.do?nowpage=${i}"> <c:choose>
							<c:when test="${i eq nowPage}">
								<strong class="num">${i}</strong>
							</c:when>
							<c:otherwise>
									${i}
						</c:otherwise>
						</c:choose>
					</a>
				</c:forEach> 
				<c:choose>
					<c:when test="${nowPage eq pageCount}">
					<a class="prev" title="다음페이지">&nbsp;NEXT ▶</a>
				</c:when>
					<c:otherwise>
						<a class="prev" title="다음페이지"
							href="FWLBList.do?nowpage=${nowPage + 1}">&nbsp;NEXT ▶</a>
					</c:otherwise>
				</c:choose>
			</div>
			<form action="FWLBListSearch.do" method="post">
				<input type="hidden" name="nowpage" value="1"/>
				<div style="text-align: center;">
					<input type="search" class="searchTerm" name="searchNickName" placeholder="검색할 닉네임을 입력해주세요">
					<button class="searchButton"><img id="searchButtonImg" src="image/serachicon.png"></button>			
				</div>
			</form>
		</div>
	</div>
	</div>
</body>
</html>