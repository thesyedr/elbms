<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Success</title>
</head>
<body>
	<div align="center">
		<table border="0">
			<tr>
				<td colspan="2" align="center"><h2>Book Inserted!</h2></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<h3>Thank you for registering! Here's the review of your details:</h3>
				</td>
			</tr>
			<tr>
				<td>Book Title</td>
				<td>${bookForm.book_title}</td>
			</tr>
			<tr>
				<td>Book Title</td>
				<td>${bookForm.book_author}</td>
			</tr>
			<tr>
				<td>Book Publisher:</td>
				<td>${bookForm.book_publisher}</td>
			</tr>
			<tr>
				<td>Profession:</td>
				<td>${bookForm.book_arrival_date}</td>
			</tr>

		</table>
	</div>
</body>
</html>