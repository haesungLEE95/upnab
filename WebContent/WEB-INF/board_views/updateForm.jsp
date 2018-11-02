<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<style type="text/css">@import url("common.css");</style>
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.passwd.value != frm.passwd2.value) {
			alert("암호가 다릅니다");
			frm.passwd2.focus(); return false;  
		}
	}
</script>
</head><body>
<form action="update.do" method="post" name="frm" 
	onsubmit="return chk()">
<input type="hidden" name="num" value="${board.num}">
<input type="hidden" name="pageNum" value="${pageNum}">
<input type="hidden" name="passwd" value="${board.passwd}">
<table border="1"><caption>상세 내역</caption>
	<tr><th>번호</th><td>${board.num}</td></tr>
	<tr><th>제목</th><td><input type="text" name="subject" 
		value="${board.subject}" 
		required="required" autofocus="autofocus"></td></tr>
	<tr><th>작성자</th><td><input type="text" name="writer" 
		required="required" value="${board.writer}"></td></tr>
	<tr><th>내용</th><td><pre><textarea rows="5" cols="30" 
		name="content" required="required">${board.content}
		</textarea></pre></td></tr>
	<tr><th>이메일</th><td><input type="email" name="email" 
		required="required" value="${board.email}"></td></tr>
	<tr><th>암호</th><td><input type="password" name="passwd2" 
		required="required" ></td></tr>
	<tr><th colspan="2"><input type="submit"></th></tr>
</table></form>
</body>
</html>