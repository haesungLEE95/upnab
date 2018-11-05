<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">@import url("common.css");</style>
</head><body>
<table border="1"><caption>게시글 목록</caption>
	<tr><th>번호</th><th>제목</th><th>적성자</th>
		<th>조회수</th><th>작성일</th></tr>
<c:if test="${empty list }">
	<tr><th colspan="5">게시글이 없습니다</th></tr>
</c:if>
<c:if test="${not empty list }">
 <c:forEach var="board" items="${list }">
 	<c:set var="total" value="${total }"/>
	<tr><td>${total}<c:set var="total" value="${total-1 }"/></td>
	<c:if test="${board.del=='y'}">
		<th colspan="4">삭제된 글입니다</th>
	</c:if>
	<c:if test="${board.del!='y'}">
		<td title="${board.content}">
	<c:if test="${board.re_level > 0 }">
		<img alt="" src="images/level.gif" height="5" 
			width="${board.re_level*10}">
		<img alt="" src="images/re.gif">
	</c:if>
		<a <%-- href="view.do?num=${board.num}&pageNum=${currentPage}" --%>>
			${board.subject}</a>
		<c:if test="${board.readcount > 50 }">
				<img alt="" src="images/hot.gif">
		</c:if></td>
		<td>${board.writer}</td>
		<td>${board.readcount}</td>
		<td>${board.reg_date}</td>
	</c:if></tr>
</c:forEach>
</c:if>
</table>
<div align="center">
	<c:if test="${currentPage!=1 }">
		<a href="list.bo?pageNum=${currentPage-1}">[이전]</a>
	</c:if>
	<c:if test="${currentPage < totPage }">	
		<a href="list.bo?pageNum=${currentPage+1}">[다음]</a>
	</c:if>	
</div>
<!-- <a href="insertForm.do?pageNum=1">게시글 입력</a> -->
</body>
</html>