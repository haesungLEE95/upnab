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
/* 	border-color: white; */
	border-spacing: 20px;
	background-color: white;
}

.board {
	width: 20%;
	height: 200px;
	align: center;
}
#thumb{
	height: auto;
	align:left; 
}
</style>
</head>
<body>
	<table>
		<tr>
			<td valign="top" width="5%"><%@ include file="../side/sidesub.jsp"%>
			</td>
			<td>
				<c:forEach var="category" items="${category }">
					<a href="categoryList.bo?category=${category.category_id }&type=1">${category.category_name }</a>
				</c:forEach>
				<table class="a1">
					<c:if test="${empty listMo }">
						<tr>
							<th>게시글이 없습니다</th>
						</tr>
					</c:if>
					<c:if test="${not empty listMo }">
						<%
							int a = 0;
						%>
						<tr>
							<c:forEach var="board" items="${listMo }">
								<c:if test="${board.board_share == 0}">
										<td class="board" ><a href="view.bo?board_num=${board.board_num }&status=${board.jim}"> <img id="thumb" alt="" src="upload/sm_${board.board_content}"></a>
										<c:if test="${board.jim == 0}">
										<a href="pick.bo?board_num=${board.board_num}&member_id=${member_id}&kubun=3"><img src="images/pickup.png" width="30px"></a>
									</c:if>
									<c:if test="${board.jim == 1}">
										<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id}&kubun=3"><img src="images/pickdown .png" width="30px"></a>
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