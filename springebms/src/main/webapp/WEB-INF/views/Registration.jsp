<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Registration</title>
</head>
<body>
	<div class="bs-example">
			<h1>Sign Up</h1>
				<form:form class="form-horizontal" action="post" method="post" commandName="userForm" >
					
					<div class="form-group">
					
						<label class="control-label col-xs-3">First Name:</label>
								<div class="col-xs-9">
									<form:input path="first_name" class="form-control" placeholder="First Name"/>
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Last Name:</label>
								<div class="col-xs-9">
									<form:input path="last_name" class="form-control" placeholder="Last Name"/>
								</div>
					</div>
					
					<div class="form-group">
			
						<label class="control-label col-xs-3" for="username">Username:</label>
						<div class="col-xs-9">
							<form:input path="username" class="form-control" placeholder="Username"/>
						</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Password:</label>
								<div class="col-xs-9">
									<form:password path="password"  class="form-control" placeholder="Password"/>
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Email:</label>
								<div class="col-xs-9">
									<form:input path="email" class="form-control" placeholder="Email"/>
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Date of Birth (mm/dd/yyyy):</label>
								<div class="col-xs-9">
									<form:input path="dateofbirth" class="form-control" placeholder="Date of Birth"/>
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">Phone:</label>
								<div class="col-xs-9">
									<form:input path="phone" class="form-control" placeholder="Phone Number"/>
								</div>
					</div>
					<div class="form-group">
					
						<label class="control-label col-xs-3">gender:</label>
								<div class="col-xs-9">
									<form:select path="gender" items="${genderList}" class="form-control" />
								</div>
					</div>
					<div class="form-group">
            		<div class="col-xs-offset-3 col-xs-9">
								<button type="submit" class="btn btn-success">Submit</button>
								<input type="reset" class="btn btn-default" value="Reset">
					</div>
					</div>
			
			</form:form>
		
		</div>
		
</body>
</html>