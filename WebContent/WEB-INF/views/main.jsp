<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="js/css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/js/bootstrap.min.js"></script>
<style type="text/css">
.main { border-spacing: 10px; }
</style>
</head>
<body>
	<div class="container">
	<table>
		<tr>
			<td valign="top" width="10%"><%@ include
					file="../side/sidesub.jsp"%></td>
			<td valign="top">	
							<div class="main" align="center">
							<h2>${member.member_name }님안녕하세요</h2>
							<table width="40%">
								<div style="padding:10px;">	
								<tr>
									<th><a href="view.do" class="btn btn-info btn-lg btn-block" role="button">조회</a><p/></th>
								</tr>
								
								<tr>
									<th><a href="updateForm.do" class="btn btn-info btn-lg btn-block" role="button">수정</a><p/></th>
								</tr>
								
								<tr>
									<th><a href="delete.do" class="btn btn-info btn-lg btn-block" role="button">탈퇴</a><p/></th>
								</tr>
								
								<tr>
									<th><a href="logout.do" class="btn btn-info btn-lg btn-block" role="button">로그아웃</a><p/></th>
								</tr>
								</div>
							</table>
							</div>
			</td>
			<td valign="top" width="30%"><%@include
					file="../side/sidemain.jsp"%></td>
		</tr>
	</table>
	</div>
</body>
</html>