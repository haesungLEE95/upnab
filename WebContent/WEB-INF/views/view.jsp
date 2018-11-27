<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th { height: 50px; }
</style>
<link rel="stylesheet" type="text/css" href="common.css">
</head>
<body>
	<table>
		<tr>
			<td valign="top" width="5%"><%@ include	file="../side/sidesub.jsp"%></td>
			<td valign="top" align="center">
			<h3>회원정보</h3>
			<hr>
			<table  width="400px">
				
				<tr>
					<th>아이디</th>
					<td>${member.member_id}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${member.member_name}</td>
				</tr>
				<tr>
					<th>전화</th>
					<td>${member.member_tel}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${member.member_email}</td>
				</tr>
			</table>
			<p/>
			<a href="main.do">메인</a>
			</td>
			<td valign="top" width="30%"><%@include file="../side/sidemain.jsp"%></td>
		</tr>
	</table>
</body>
</html>