<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:set var="member_id" value="${sessionScope['member_id'] }"></c:set>
<c:if test="${empty member_id }">
	<script type="text/javascript">
		location.href="loginForm.do";
	</script>
</c:if>
</body>
</html>