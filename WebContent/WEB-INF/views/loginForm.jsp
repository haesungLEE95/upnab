<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="login.do">
	<table border="1">
		<caption>로그인,</caption>
		<tr>
			<th>아이디</th><td>
			<input type="text" name="member_id" required="required" autofocus="autofocus"></td>
		</tr>
		<tr>
			<th>암호</th><td>
			<input type="password" name="member_password" required="required"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="ok"></th>
		</tr>
	</table>
</form>
<a href="joinForm.do">회원가입</a>
</body>
</html>