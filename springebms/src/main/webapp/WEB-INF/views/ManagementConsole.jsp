<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Library Interface</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>\resources\css\bootstrap-theme.min.css">
<%-- <script src="<%=request.getContextPath() %>\resources\js\jquery.min.js"></script>
<script src="<%=request.getContextPath() %>\resources\js\bootstrap.min.js"></script> --%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">    
.masthead img{
width:100%;
 }
</style>
</head>
<body>
<div class="masthead">
<img src="<%=request.getContextPath() %>\resources\images\mainheader.png"/>
</div>
<div class="container">
 
<!-------->
<div id="content">
    <ul id="tabs" class="nav nav-tabs" data-tabs="tabs">
        <li class="active"><a href="#red" data-toggle="tab">Home</a></li>
        <li><a href="#orange" data-toggle="tab" onclick="javascript:show();">User Management</a></li>
        <li><a href="#/springebms/bms/insert" data-toggle="tab">Book Management</a></li>
        <li><a href="#green" data-toggle="tab">Library</a></li>
        <li><a href="#blue" data-toggle="tab">Profile</a></li>
    </ul>
    <div id="my-tab-content" class="tab-content">
        <div class="tab-pane active" id="red">
            <h1>Red</h1>
            <p>red red red red red red</p>
        </div>
        <div class="tab-pane" id="orange">
            <h1>Orange</h1>
            <p>orange orange orange orange orange</p>
        </div>
        <div class="tab-pane" id="yellow">
            <h1>Yellow</h1>
            <p>yellow yellow yellow yellow yellow</p>
        </div>
        <div class="tab-pane" id="green">
            <h1>Green</h1>
            <p>green green green green green</p>
        </div>
        <div class="tab-pane" id="blue">
            <h1>Blue</h1>
            <p>blue blue blue blue blue</p>
        </div>
    </div>
</div>
 
 
<script type="text/javascript">
    jQuery(document).ready(function ($) {
    	
        $('#tabs').tab();
    });
    
function show(){
	alert("==================inside show Function==================");
}
</script>    
</div> <!-- container -->

This the Library Interface Management Console!

<div class="masthead">
<img src="<%=request.getContextPath() %>\resources\images\footer.png"/>
</div>
</body>
</html>