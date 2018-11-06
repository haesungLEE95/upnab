<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="common.css">
</head><body>
<form action="insert.do" method="post">
	<input type="hidden" name="num" value="${num}">
	
<table border="1"><caption>게시글 입력</caption>
	<tr><th>카테고리</th><td>
		<c:forEach var="cg" items="${category }">
			<input type="checkbox" value="1">${cg.category_name }
		</c:forEach>
	</td></tr>
	<tr><th>공개여부</th><td><input type="checkbox" name="share"
		required="required"></td></tr>
	<tr><th>내용</th><td><textarea rows="5" cols="30" 
		name="content" required="required"></textarea></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>