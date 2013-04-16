
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"
    
    import="java.util.List, java.sql.*,blog.*"
    
    %>
    <% Class.forName("com.mysql.jdbc.Driver").newInstance(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Hello, world!
<%

BlogSystem v = new BlogSystem();

v.blogPosts = DB.getPosts();
v.authorList = DB.getAuthors(); %>


<%
for ( Post post : v.blogPosts )
{
	%>
	<h2><%= post.title %></h2>
	<%
}
%>
</body>
</html>