<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!-- source: http://www.textfixer.com/tutorials/css-table-alternating-rows.php -->
<style type="text/css">
	.TFtable{
		width:100%; 
		border-collapse:collapse; 
	}
	.TFtable td{ 
		padding:7px; border:#000000 2px solid;
	}
	/* provide some minimal visual accomodation for IE8 and below */
	.TFtable tr{
		background: #d8b949;
	}
	/*  Define the background color for all the ODD background rows  */
	.TFtable tr:nth-child(odd){ 
		background: #d8b949;
	}
	/*  Define the background color for all the EVEN background rows  */
	.TFtable tr:nth-child(even){
		background: #ead33a;
	}
</style>
<head>
    <title>Product Summary</title>
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">    
</head>
<body>
<h2>View User</h2>
<section>

<a href="/list" class="btn btn-default">Main page</a>


<p/>
</section>
<section>
<table class="TFtable">
<tr>
  <td><h3>Id</h3></td>
  <td><h3>Login</h3></td>
  <td><h3>Password</h3></td>
  <td><h3>Role</h3></td>
  <td><h3></h3></td>
  <td><h3></h3></td>
</tr>
<c:forEach items="${user}" var="user">
<tr>
	<td><c:out value="${user.getId()}"/></td>
	<td><c:out value="${user.getLogin()}"/></td>
	<td><c:out value="${user.getPassword()}"/></td>
	<td><c:out value="${user.getRole()}"/></td>
	<td><a href="/view/delete?userId=${user.getId()}">Delete</a></td>
</tr>
</c:forEach>
</table>
</section>
</body>
</html>
