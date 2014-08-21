<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">
    h1{
        margin: 30px 0;
        padding: 0 200px 15px 0;
        border-bottom: 1px solid #E5E5E5;
    }
	.bs-example{
    	margin: 60px;
    }
</style>
<script type="text/javascript">

$('.selectpicker').selectpicker();

</script>
<title>ELBMS</title>
</head>
<body>
	<div class="bs-example">
			<h1>Book Management System</h1>
			<form:form action="books" method="get" commandName="bookForm" class="form-horizontal">
			<!-- <table border="0"> -->
				<!-- <tr>
					<td colspan="2" align="center"><h2>Book Management System</h2></td>
				</tr> -->
				
				<%-- <tr class="form-group">
					<td>Category:</td>
					
					<td><form:input path="book_category" /></td>
				</tr> --%>
				
				<%-- <div class="form-group">
					
						<label >Category:</label>
								
									<form:select path="book_category" items="${categoryList}"  />
								
				</div>
				<div class="form-group">
				
								<button type="submit" class="btn btn-success">Submit</button>
								
					
					</div> --%>
					<select class="selectpicker">
					    <option>Mustard</option>
					    <option>Ketchup</option>
					    <option>Relish</option>
					  </select>
</div>
<button type="submit" class="btn btn-success">Submit</button>
			<!-- </table> -->
		</form:form>
	</div>
</body>
</html>