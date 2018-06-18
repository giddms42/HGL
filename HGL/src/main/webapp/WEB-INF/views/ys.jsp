<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Pure CSS Table Highlight (vertical , horizontal)</title>


<link rel="stylesheet" href="css/style.css">


</head>

<body>

	<div class="container">
		<table>
			<thead>
			<col width="50" class="ab">
			<col width="350">
			<col width="50">
			<col width="50">
			<col width="200">
			<tr>
				<th class="text-center">글번호</th>
				<th class="text-center">글제목</th>
				<th class="text-center">글쓴이</th>
				<th class="text-center">조회수</th>
				<th class="text-center">등록일</th>
			</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${empty list}">
						<c:forEach begin="0" end="9">
							<tr>
								<td colspan="5">작성된 글이 존재하지 않습니다.</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="dto">
							<tr>
								<td>${dto.ggRowNum}</td>
								<td><a href="GGDetailForm.do?ggNo=${dto.ggNo }&count=1">${dto.ggTitle }</a></td>
								<td>${dto.ggWriter }</td>
								<td>${dto.ggReadcnt }</td>
								<td><fmt:formatDate value="${dto.ggDate}"
										pattern="yyyy-MM-dd HH:mm" /></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>



</body>

</html>