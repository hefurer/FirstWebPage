
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
	
	<%
	BlogSystem v = new BlogSystem();
	v.authorList = DB.getAuthors();
	v.categoryList = DB.getCategories();
	v.blogPosts = DB.getPosts(v);
%>
	<form action="createPost.jsp" method="POST">
		<table>
			<tr>
				<td>Title:</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td>Lead Paragraph:</td>
				<td><textarea name="lead_paragraph"></textarea></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td><textarea name="content"></textarea></td>
			</tr>
			<tr>
				<td>Author:</td>
				<td><select name="author">
						<%
							for (Author author : v.authorList) {
						%>
						<option value="<%=author.id%>"><%=author.firstName + " " + author.lastName%></option>

						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<td>Category:</td>
				<td><select name="category">
						<%
							for (Category category : v.categoryList) {
						%>
						<option value="<%=category.id%>"><%=category.name%></option>

						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="Submit" /></td>
			</tr>
		</table>
	</form>

	<%
		for (Post post : v.blogPosts) {
	%>
	<h2><%=post.category.name%></h2>

	<%
		}
	%>
</body>
</html>