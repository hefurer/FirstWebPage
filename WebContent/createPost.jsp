
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List, java.sql.*,blog.*"%>
<%
	Class.forName("com.mysql.jdbc.Driver").newInstance();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 String title = request.getParameter("title");
 String lead_paragraph = request.getParameter("lead_paragraph");
 String content = request.getParameter("content");
 int category_id = request.getParameter("category");
 int author_id = request.getParameter("author");
	
	
	<%DB.createPost(title, lead_paragraph, content, category_id, author_id); %>
</body>
</html>