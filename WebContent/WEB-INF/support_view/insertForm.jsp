<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td width="5%"><%@ include file="../side/sidesub.jsp"%></td>
			<td>
				<form action="insert.sp" method="post">
					<input type="hidden" name="member_id" value="${member_id }">
					<table border="1">
						<caption>게시글 입력</caption>
						<tr>
							<th>제목</th>
							<td><input type="text" name="support_title" autofocus="autofocus" required="required"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><textarea rows="5" cols="30" name="support_content"
									required="required"></textarea></td>
						</tr>
						<tr>
							<th colspan="2"><input type="submit" value="확인"></th>
						</tr>
					</table>
				</form>
			</td>
			<td width="30%"><%@include file="../side/sidemain.jsp"%></td>
		</tr>
	</table>
</body>
</html>