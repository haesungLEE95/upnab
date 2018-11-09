<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="upnab.dao.*,upnab.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	SupportDao sd = SupportDao.getInstance();
	for(int i = 1 ; i <=15 ; i++){
		Support support = new Support();

		support.setMember_id("a"+i);
		support.setSupport_title("a"+i); 
		support.setSupport_content ("abc"); 
		
		sd.insert(support);
	}  
%>
</body>
</html>