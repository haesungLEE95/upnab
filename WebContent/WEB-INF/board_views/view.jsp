<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html><html><head><meta charset="UTF-8">
<style type="text/css">@import url("common.css");</style>
<title>Insert title here</title></head><body>
<table border="1"><caption>상세 내역</caption>
	<tr><th>번호</th><td>${board.num}</td></tr>
	<tr><th>제목</th><td>${board.subject}</td></tr>
	<tr><th>작성자</th><td>${board.writer}</td></tr>
	<tr><th>내용</th><td><pre>${board.content}</pre></td></tr>
	<tr><th>이메일</th><td>${board.email}</td></tr>
	<tr><th>IP</th><td>${board.ip}</td></tr>
	<tr><th>조회수</th><td>${board.readcount}</td></tr>
	<tr><th>작성일</th><td>${board.reg_date}</td></tr>
</table>
<a href="list.do?pageNum=${pageNum}">목록</a>
<a href="updateForm.do?num=${board.num}&pageNum=${pageNum}">수정</a>
<a href="deleteForm.do?num=${board.num}&pageNum=${pageNum}">삭제</a>
<a href="insertForm.do?num=${board.num}&pageNum=${pageNum}">답변</a>
</body>
</html>