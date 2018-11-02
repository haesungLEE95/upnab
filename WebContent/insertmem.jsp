<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="upnab.dao.*, upnab.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MemberDao md = MemberDao.getInstance();
	for(int i = 1 ; i <=230 ; i++){
		Member member = new Member();
		int t = 10000000;
		member.setMember_id("a"+i);
		member.setMember_password("1");
		member.setMember_name("홍길"+i);
		member.setMember_email("k"+i+"@em.ail");
		member.setMember_tel(t+i);
		md.insert(member);
	}
%>
입력 성공
</body>
</html>