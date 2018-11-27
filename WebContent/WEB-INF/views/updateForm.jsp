<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="sessionChk.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th { height: 50px;}
</style>
<script type="text/javascript">
	function chk() {
		if (frm.password.value != frm.password2.value) {
			alert("암호와 암호 확인이 다릅니다.");
			frm.password.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<table>
		<tr>
			<td valign="top" width="5%"><%@ include
					file="../side/sidesub.jsp"%></td>
			<td valign="top" align="center">
				<form action="update.do" method="post" name="frm"
					onsubmit="return chk()" enctype="multipart/form-data">
					<input type="hidden" name="member_id" value="${member.member_id }">
					<h3>회원정보 수정</h3>
					<hr>
					<table>
						<tr>
							<th>아이디</th>
							<td>${member.member_id }</td>
						</tr>
						<tr>
							<th>암호</th>
							<td><input type="password" name="member_password"
								required="required" autofocus="autofocus"></td>
						</tr>
						<tr>
							<th>암호확인</th>
							<td><input type="password" name="member_password2"
								required="required"></td>
						</tr>
					
						<tr>
							<th>이름</th>
							<td><input type="text" name="member_name"
								required="required" value="${member.member_name }"></td>
						</tr>
						<tr>
							<th>전화</th>
							<td><input type="tel" name="member_tel"
								value="${member.member_tel}" required="required"
								placeholder="'-'없이 입력해주세요"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="text" name="member_email"
								required="required" value="${member.member_email }"></td>
						</tr>
						<tr>
							<th>프로필사진</th>
							<td><input type="file" name="member_img"
								value="${member.member_img }"></td>
						</tr>
						<tr>
							<th colspan="2"><input type="submit" value="확인"></th>
						</tr>
					</table>
				</form>
			</td>
			<td valign="top" width="30%"><%@include
					file="../side/sidemain.jsp"%></td>
		</tr>
	</table>
</body>
</html>