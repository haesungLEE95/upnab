<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><head><meta charset="UTF-8">
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
	<table border="1">
		<tr>
			<td width="5%"><%@ include file="../side/sidesub.jsp"%></td>
			<td>
				<table border="1" align="center" height="100%" width="500px" class="a1" >
				<caption>게시글 목록</caption>
				<c:if test="${empty list }">
						<tr>
							<th>게시글이 없습니다</th>
						</tr>
					</c:if>
					<c:if test="${not empty list }">
					<c:forEach var="support" items="${list }">
						<tr>
									<td>${support.support_content}</td>
						</tr>
					</c:forEach>
					</c:if>
				</table>
				<div align="center">
					<c:if test="${currentPage!=1 }">
						<a href="list.sp?pageNum=${currentPage-1}">[이전]</a>
					</c:if>
					<c:if test="${currentPage < totPage }">
						<a href="list.sp?pageNum=${currentPage+1}">[다음]</a>
					</c:if>
				</div> <a href="insertForm.sp?pageNum=1">게시글 입력</a>
			</td>
			<td width="30%"><%@include file="../side/sidemain.jsp"%>
			</td>
		</tr>
	</table>
</body>
</html>