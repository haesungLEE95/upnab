<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result > 0}">
	<script type="text/javascript">
		alert("수정 성공 ㅋㅋ !"); 
		location.href="view.do?num=${board.num}&pageNum=${pageNum}";
	</script>
</c:if>
<c:if test="${result == 0}">
<script type="text/javascript">
	alert("에효 ! 뭔들 제대로 ㅠㅠ"); 
	history.go(-1);
</script>
</c:if>
</body>
</html>