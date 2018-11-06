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
	CategoryDao cd = CategoryDao.getInstance();
	Category category;
	category = new Category();

		category.setCategory_id(0);
		category.setCategory_name("동물");
		cd.insert(category);
	category = new Category();

		category.setCategory_id(1);
		category.setCategory_name("식물");
		
		
		cd.insert(category);
		category = new Category();

		category.setCategory_id(2);
		category.setCategory_name("생물");
		
		
		cd.insert(category);
		category = new Category();

		category.setCategory_id(3);
		category.setCategory_name("사람");
		
		
		cd.insert(category);
		category = new Category();

		category.setCategory_id(4);
		category.setCategory_name("풍경");
		
		
		cd.insert(category);
 
%>
</body>
</html>