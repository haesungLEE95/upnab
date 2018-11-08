<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.a1 {
	width: 100%;
	border-color: white;
	border-spacing: 20px;
	background-color: gray;
}

.board {
	width: 20%;
	height: 200px;
	align: center;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td width="10%"><%@ include file="sidesub.jsp"%>
			</td>
			<td>
				<table border="1" class="a1">
					<caption>게시글 목록</caption>

					<c:if test="${empty list }">
						<tr>
							<th>게시글이 없습니다</th>
						</tr>
					</c:if>
					<c:if test="${not empty list }">
						<%
							int a = 0;
						%>

						<tr>
							<c:forEach var="board" items="${list }">
								<c:if test="${board.board_share == 0}">
									<td class="board">${board.board_content}</td>
									<%
										a++;
													if (a % 5 == 0) {
									%>
								
						</tr>
						<tr>
							<%
								}
							%>
						
					</c:if>
					</c:forEach>
					</tr>
					</c:if>
				</table>
				<div align="center">
					<c:if test="${currentPage!=1 }">
						<a href="list.bo?pageNum=${currentPage-1}">[이전]</a>
					</c:if>
					<c:if test="${currentPage < totPage }">
						<a href="list.bo?pageNum=${currentPage+1}">[다음]</a>
					</c:if>
				</div> <a href="insertForm.bo?pageNum=1">게시글 입력</a>
			</td>
			<td width="30%"><%@include file="sidemain.jsp"%>
			</td>
		</tr>
	</table>

</body>
</html>