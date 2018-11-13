<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.log { padding: 20; margin: 20; }
.left {padding: 100px;}
.right {padding: 20px; margin-left: 50px;}
.join {width: 40%; height: 40px; font-size: 19px;}
</style>
</head>
<body>
<table border="1" >
<tr>
	<td class="left" width="500px" height="400px">
		<h3>사진과 영상을 공유하세요</h3><br><p/>
		<h3>사람들과 컨텐츠를 감상해보세요</h3><br><p/>
		<h3>소통을 해보세요</h3><br><p/>
	</td>
	<td class="right" width="600px" height="400px" valign="top" >
		<form action="login.do">
		<div class="log" align="center" >
				<a><input type="text" name="member_id" required="required"
					 autofocus="autofocus" placeholder="아이디"></a>
				<a><input type="password" name="member_password" required="required"
					placeholder="비밀번호"></a>
				<a><input type="submit" value="ok"></a><p/>
		</div>
		</form>
				<div align="center">
				<button class="join"><a href="joinForm.do" >회원가입</a></button>
				</div>
	</td>
</tr>
</table>
</body>
</html>