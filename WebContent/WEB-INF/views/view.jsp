<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head><body>
<table border="1"><caption>회원 정보.</caption>
	<tr><th>아이디</th><td>${member.member_id}</td></tr>
	<tr><th>이름</th><td>${member.member_name}</td></tr>
	<tr><th>전화</th><td>${member.member_tel}</td></tr>
	<tr><th>이메일</th><td>${member.member_email}</td></tr>
</table>
<a href="main.do">메인</a>
</body>
</html>