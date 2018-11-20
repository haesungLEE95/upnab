<%@page import="upnab.dao.PickDao"%>
<%@page import="upnab.model.Pick"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/sessionChk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.a1 {
	width: 100%;
/* 	border-color: black; */
	border-spacing: 20px;
	background-color: white;
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
			<td valign="top" width="5%"><%@ include file="../side/sidesub.jsp"%>
			</td>
			<td>
				<table class="a1">
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
									<td class="board" ><a href="view.bo?board_num=${board.board_num }&status=${board.jim}">${board.board_content}</a>
									<c:if test="${board.jim == 0}">
										<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=1"><img src="images/pickup.png" width="30px"></a>
									</c:if>
									<c:if test="${board.jim == 1}">
										<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=1"><img src="images/pickdown .png" width="30px"></a>
									</c:if>
									</td>
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
				</div>
			</td>
			<td valign="top" width="30%"><%@include file="../side/sidemain.jsp"%>
			</td>
		</tr>
	</table>

</body>
</html>