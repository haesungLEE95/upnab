<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result >0 && status==1}">
		<c:if test="${kubun==1 }">
			<script type="text/javascript">
				/* alert("찜 성공"); */
				location.href="list.bo";
			</script>
		</c:if>
		<c:if test="${kubun==2 }">
			<script type="text/javascript">
				/* alert("찜 성공"); */
				location.href="listPo.bo";
			</script>
		</c:if>		
		<c:if test="${kubun==3 }">
			<script type="text/javascript">
				/* alert("찜 성공"); */
				location.href="listMo.bo";
			</script>
		</c:if>
		<c:if test="${kubun==4 }">
			<script type="text/javascript">
				/* alert("찜 성공"); */
				location.href="view.bo?board_num=${board_num }&status=1";
			</script>
		</c:if>
	</c:if>
	<c:if test="${result >0 && status==0}">
		<c:if test="${kubun==1 }">
			<script type="text/javascript">
				location.href="list.bo";
			</script>
		</c:if>
		<c:if test="${kubun==2 }">
			<script type="text/javascript">
				location.href="listPo.bo";
			</script>
		</c:if>		
		<c:if test="${kubun==3 }">
			<script type="text/javascript">
				location.href="listMo.bo";
			</script>
		</c:if>
		<c:if test="${kubun==4 }">
			<script type="text/javascript">
				location.href="view.bo?board_num=${board_num }&status=0";
			</script>
		</c:if>
	</c:if>
	<c:if test="${result <=0 }">
		<script type="text/javascript">
			alert("찜 실패");
			location.href="list.bo";
		</script>
	</c:if>
</body>
</html>