<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../views/sessionChk.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
.a1 {
	width: 100%;
	border-color: white;
	border-spacing: 20px;
	background-color: gray;
}

.board {
	width: 20%;
	height: 200px;
	align: center;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td width="10%"><%@ include file="../side/sidesub.jsp"%>
			</td>
			<td>
				<table border="1" class="a1">
					<tr>
						<th>${board.member_id}</th>
						<th></th>
						<th>${board.board_date }</th>
					</tr>
					<tr>
						<th colspan="3"><img alt="" src="upload/${board.board_content }"></th>
					</tr>
					<tr>
						<th>
							<c:if test="${board.jim == 0}">
								<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=4"><img src="images/pickup.png" width="30px"></a>
							</c:if>
							<c:if test="${board.jim == 1}">
								<a href="pick.bo?board_num=${board.board_num }&member_id=${member_id }&kubun=4"><img src="images/pickdown .png" width="30px"></a>
							</c:if>
						</th>
						<td>${board.board_pickcnt }</td><td>${board.board_hit }</td>
					</tr>
				</table>
				<!-- <img alt="" src="" onclick="pick.bo"> 있다할꺼임 위에 찜빼고 이미지로 쓸거임-->
				<div id="disqus_thread"></div> <script>
					(function() { // DON'T EDIT BELOW THIS LINE
						var d = document, s = d.createElement('script');
						s.src = 'https://upnab.disqus.com/embed.js';
						s.setAttribute('data-timestamp', +new Date());
						(d.head || d.body).appendChild(s);
					})();
				</script>
				<noscript>
					Please enable JavaScript to view the <a
						href="https://disqus.com/?ref_noscript">comments powered by
						Disqus.</a>
				</noscript>
			</td>
			<td width="30%"><%@include file="../side/sidemain.jsp"%>
			</td>
		</tr>
	</table>

</body>
</html>