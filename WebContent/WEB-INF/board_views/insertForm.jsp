<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/sessionChk.jsp"%>
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
.form {width: 100%; }
th { height: 50px; }
</style>
</head>
<body>
	<table>
		<tr>
			<td valign="top" width="10%"><%@ include file="../side/sidesub.jsp"%></td>
			
			<div class="form" align="center">
			<td align="center" valign="top" width="60%" style="padding:  60px" >
				<form action="insert.bo" method="post" enctype="multipart/form-data">
					<input type="hidden" name="member_id" value="${member.member_id }">
					<h3>게시물올리기</h3>
					<hr>
					<table>
						<tr>
							<th>카테고리</th>
							<td><c:forEach var="cg" items="${category }">
									<input type="checkbox" name="category_pick"
										value="${cg.category_id }">${cg.category_name }
							</c:forEach></td> 
						</tr>
						<tr>
							<th>공개여부</th>
							<td><input type="checkbox" name="board_share">비공갱</td>
						</tr>
						<tr>
							<th>타입</th>
							<td><input type="checkbox" name="board_type">동영상</td>
						</tr>
						<tr>
							<th>내용</th>
							<td><input type="file" name="board_content"
									required="required"></td>
						</tr>
						<tr>
							<th colspan="2"><input type="submit" value="확인"></th>
						</tr>
					</table>
				</form>
			</td>
			</div>
			
			<td valign="top" width="30%"><%@include file="../side/sidemain.jsp"%></td>
		</tr>
	</table>
</body>
</html>