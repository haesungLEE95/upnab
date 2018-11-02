<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>${member.member_name }님 안녕하세요</h2>
<table border="1">
	<tr><th><a href="view.do">조회</a></th></tr>
	<tr><th><a href="updateForm.do">수정</a></th></tr>
	<tr><th><a href="delete.do">탈퇴</a></th></tr>
	<tr><th><a href="logout.do">로그아웃</a></th></tr>
</table>
</body>
</html>