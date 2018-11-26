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
/* 	border-color: black; */
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
.pick {
	position: absolute;
	top: 110px;
	left:10px;
	z-index: 2;
}
</style>
</head>
<body>
	<table>
		<tr>
			<td valign="top" width="10%"><%@ include file="../side/sidesub.jsp"%>
			</td>
			<td>
				<table class="a1">
					<c:if test="${empty listWatched }">
						<tr>
							<th>내가 본 게시물이 없습니다</th>
						</tr>
					</c:if>
					<c:if test="${not empty listWatched }">
						<%
							int a = 0;
						%>
						<tr>
							<c:forEach var="board" items="${listWatched }">
								<td class="board" >
									<div class="content">
										<a href="view.bo?board_num=${board.board_num }&status=${board.jim}">
										<c:if test="${board.board_type== 0 }">
											<img id="thumb" alt="" src="upload/sm_${board.board_content}">
										</c:if>
										<c:if test="${board.board_type== 1 }">
											<img id="thumb" alt="" src="upload/sm_${board.board_content}.jpg">
										</c:if>
										</a>
										<div class="pick">
											<c:if test="${board.jim == 0}">
												<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=5"><img src="images/pickup.png" width="30px"></a>
											</c:if>
											<c:if test="${board.jim == 1}">
												<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=5"><img src="images/pickdown .png" width="30px"></a>
											</c:if>
										</div>
									</div>
								</td>
								<%	a++;
									if (a % 5 == 0) { %>
										</tr>
										<tr>
								<%	} %>
							</c:forEach>
						</tr>
					</c:if>
				</table>
			</td>
			<td valign="top" width="30%"><%@include file="../side/sidemain.jsp"%>
			</td>
		</tr>
	</table>
</body>
</html>