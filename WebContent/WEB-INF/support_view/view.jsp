<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1"><caption>회원 정보.</caption>
	<tr><th>글번호</th><td>${support.support_num}</td></tr>
	<tr><th>제목</th><td>${support.support_title}</td></tr>
	<tr><th>아이디</th><td>${support.member_id}</td></tr>
	<tr><th>날짜</th><td>${support.support_date}</td></tr>
	<tr><th>내용.</th><td>${support.support_content}</td></tr>
</table>
<a href="list.sp">메인</a></body>
</html>