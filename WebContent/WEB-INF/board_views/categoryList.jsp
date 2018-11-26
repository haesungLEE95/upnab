<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="js/css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/js/bootstrap.min.js"></script>
</head>
<body>
	<table>
		<tr>
			<td valign="top" width="5%"><%@ include file="../side/sidesub.jsp"%>
			</td>
			<td>
				<c:if test="${type==2 }">
					<span style="font-size: 30px;">사진&동영상</span><button type="button" role="button" class="btn btn-outline-info" disabled>#${category_name }</button>
				</c:if>
				<c:if test="${type==0}">
					<h2>사진</h2>
				</c:if>
				<c:if test="${type==1}">
					<h2>동영상</h2>
				</c:if>
				<div style="margin-top: 0px">				
				<c:forEach var="category" items="${category }">
					<a class="btn btn-info" role="button" href="categoryList.bo?category=${category.category_id }&category_name=${category.category_name }&type=${type}">#${category.category_name }</a>
				</c:forEach>
				</div>
				<table class="a1">
					<c:if test="${empty listCate }">
						<tr>
							<th>게시글이 없습니다</th>
						</tr>
					</c:if>
					<c:if test="${not empty listCate }">
						<%
							int a = 0;
						%>
						<tr>
							<c:forEach var="board" items="${listCate }">
								<c:if test="${board.board_share == 0}">
									<td class="board" ><a href="view.bo?board_num=${board.board_num }&status=${board.jim}"> <img id="thumb" alt="" src="upload/sm_${board.board_content}"></a>
										<c:if test="${board.jim == 0}">
										<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=2"><img src="images/pickup.png" width="30px"></a>
									</c:if>
									<c:if test="${board.jim == 1}">
										<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=2"><img src="images/pickdown .png" width="30px"></a>
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