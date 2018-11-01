<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function chk() {
		if (frm.member_password.value != frm.member_password2.value) {
			alert("암호와 암호 확인이 다릅니다");
			frm.member_password.focus();	return false;
		}
	}
	function idChk() {
		if (!frm.member_id.value) {	alert("아이디입력하고 체크하세요");
			frm.member_id.focus();		return;  }
		window.open("idChk.do?member_id="+frm.member_id.value,"",
			"width=400 height=300");
	}
</script>
</head><body>
<form action="join.do" method="post" name="frm" 
	onsubmit="return chk()">
<table border="1"><caption>회원정보 입력</caption>
	<tr><th>아이디</th><td><input type="text" name="member_id" 
		required="required" autofocus="autofocus">
		<input type="button" value="중복체크" onclick="idChk()"></td></tr>
	<tr><th>암호</th><td><input type="password" name="member_password" 
		required="required"></td></tr>
	<tr><th>암호확인</th><td><input type="password"
		name="member_password2" required="required"></td></tr>
	<tr><th>이름</th><td><input type="text"	name="member_name" 
		required="required"></td></tr>
	<tr><th>주소</th><td><input type="email" name="member_email" 
		required="required"></td></tr>
	<tr><th>전화</th><td><input type="tel" name="member_tel" 
		required="required" pattern="\d{3}-\d{3,4}-\d{4}" 
		placeholder="xxx-xxxx-xxxx"></td></tr>
	<tr><th colspan="2"><input type="submit" value="확인"></th></tr>
</table>
</form>
</body>
</html>