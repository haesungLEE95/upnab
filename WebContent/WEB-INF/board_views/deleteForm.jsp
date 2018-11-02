<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
<script type="text/javascript">
	function chk() {
		if (frm.passwd.value != frm.passwd2.value) {
			alert("암호가 다릅니다");	frm.passwd2.value="";
			frm.passwd2.focus();	return false;
		}
	}
</script></head><body>
<form action="delete.do" name="frm" onsubmit="return chk()">
	<input type="hidden" name="passwd" value="${board.passwd}">
	<input type="hidden" name="num" value="${board.num}">
	<input type="hidden" name="pageNum" value="${pageNum}">
<table><caption>게시글 삭제</caption>
	<tr><th>암호</th><td><input type="password" name="passwd2"
		required="required" autofocus="autofocus"></td></tr>
	<tr><th colspan="2"><input type="submit"></th></tr>
</table></form>
</body>
</html>