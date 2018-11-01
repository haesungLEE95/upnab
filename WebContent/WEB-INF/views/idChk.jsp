<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0}">
	<h2>다른 아이디를 사용하시오</h2>
	<form action="">
		아이디 : <input type="text" name="member_id" required="required"
			autofocus="autofocus"><p>
		<input type="submit">
	</form>
</c:if>
<c:if test="${result == 0 }">
	<script type="text/javascript">
		alert("사용가능한 ID입니다");
		opener.frm.member_id.value = "${member_id}";
		window.close();
	</script>
</c:if>
</body>
</html>