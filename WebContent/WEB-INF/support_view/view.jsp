<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td width="10%"><%@ include file="../side/sidesub.jsp"%>
			</td>
			<td>
				<table border="1">
					<caption>회원 정보.</caption>
					<tr>
						<th>글번호</th>
						<td>${support.support_num}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${support.support_title}</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${support.member_id}</td>
					</tr>
					<tr>
						<th>날짜</th>
						<td>${support.support_date}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td>${support.support_content}</td>
					</tr>
				</table> <a href="list.sp">메인</a>
			</td>
			<td width="30%"><%@include file="../side/sidemain.jsp"%>
			</td>
		</tr>
	</table>

</body>
</html>