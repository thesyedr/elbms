<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
</head>
<body>
	<div align="center">
		<form:form action="pushBook" method="post" commandName="bookForm">
			<table border="0">
				<tr>
					<td colspan="2" align="center"><h2>Book Management System</h2></td>
				</tr>
				<tr>
					<td>Book Title:</td>
					<td><form:input path="book_title" /></td>
				</tr>
				<tr>
					<td>Book Author:</td>
					<td><form:input path="book_author" /></td>
				</tr>
				<tr>
					<td>Edition:</td>
					<td><form:input path="book_edition" /></td>
				</tr>
				<tr>
					<td>Name of The Publication : </td>
					<td><form:input path="book_publisher" /></td>
				</tr>
				<tr>
					<td>Birthday (mm/dd/yyyy):</td>
					<td><form:input path="book_arrival_date" /></td>
				</tr>
				
				
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>