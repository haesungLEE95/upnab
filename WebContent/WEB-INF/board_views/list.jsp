<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url("common.css");
</style>
</head>
<body>
	<table border="1">
		<caption>게시글 목록</caption>
		<tr>
			<th>작성자</th>
			<th>내용</th>
			<th>조회수</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<th colspan="3">게시글이 없습니다</th>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="board" items="${list }">
				<tr>
					<c:if test="${board.board_share == 0}">
						<td>${board.member_id }</td>
						<td>${board.board_content}</td>
						<td>${board.board_hit }</td>
					</c:if>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	<div align="center">
		<c:if test="${currentPage!=1 }">
			<a href="list.bo?pageNum=${currentPage-1}">[이전]</a>
		</c:if>
		<c:if test="${currentPage < totPage }">
			<a href="list.bo?pageNum=${currentPage+1}">[다음]</a>
		</c:if>
	</div>
	<a href="insertForm.bo?pageNum=1">게시글 입력</a>
</body>
</html>