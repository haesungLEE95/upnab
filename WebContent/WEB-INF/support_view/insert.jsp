<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result > 0}">
	<script type="text/javascript">
		alert("입력됐네");
		location.href = "list.sp";
	</script>
</c:if>
<c:if test="${result == 0}">
	<script type="text/javascript">
		alert("으이그 !! 잘하는게 없네");
		history.go(-1);
	</script>
</c:if>
</body>
</html>