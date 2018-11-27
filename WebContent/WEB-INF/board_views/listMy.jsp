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
.content { position:relative;
	z-index: 1;
}
.delete {
	position: absolute;
	top: 110px;
	left:110px;
	z-index: 2;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td valign="top" width="10%"><%@ include file="../side/sidesub.jsp"%>
			</td>
			<td valign="top" style="padding: 30px">
					<h4 align="center">게시글 목록</h4>
				<table class="a1">
					<c:if test="${empty listMy }">
						<tr>
							<th>게시글이 없습니다</th>
						</tr>
					</c:if>
					<c:if test="${not empty listMy }">
						<%
							int a = 0;
						%>
						<tr>
							<c:forEach var="board" items="${listMy }">
										<td class="board"><div class="content"><a href="view.bo?board_num=${board.board_num }&status=${board.jim}"> <img id="thumb" alt="" src="upload/sm_${board.board_content}"></a>
											<div class="delete" ><a href="delete.bo?board_num=${board.board_num }"><img alt="" src="images/trash.png" width="30px"></a>
											</div>
											</div>
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
							</c:forEach>
						</tr>
					</c:if>
				</table>
				<div align="center">
					<c:if test="${currentPage!=1 }">
						<a href="listMy.bo?pageNum=${currentPage-1}">[이전]</a>
					</c:if>
					<c:if test="${currentPage < totPage }">
						<a href="listMy.bo?pageNum=${currentPage+1}">[다음]</a>
					</c:if>
				</div> 
			</td>
			<td valign="top" width="30%"><%@include file="../side/sidemain.jsp"%>
			</td>
		</tr>
	</table>
</body>
</html>