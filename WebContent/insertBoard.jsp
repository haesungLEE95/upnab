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
	BoardDao bd = BoardDao.getInstance();
	for(int i = 2 ; i <=125 ; i++){
		Board board = new Board();

		board.setMember_id("a"+i);
		board.setBoard_content("C_11zP9VwAA_UGr.jpg"); 
		board.setBoard_hit(0); 
		board.setBoard_pickcnt(0); 
		board.setBoard_share(0); 
		board.setBoard_type(0);
		
		bd.insert(board);
	}  
%>
</body>
</html>