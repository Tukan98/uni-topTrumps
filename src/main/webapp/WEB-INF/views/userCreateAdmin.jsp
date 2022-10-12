<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Login page</title>
<style>
.error {
	color: red;
}
div {
    margin: 0px auto;
    width:400px;
}
</style>
</head>
<body>
<div>
 <img src="https://vignette.wikia.nocookie.net/logopedia/images/0/08/Top_Trumps.svg/revision/latest/scale-to-width-down/320?cb=20160628161856" alt="Smiley face" align="middle"></img>


<p>


</p>

	 
		
<form:form method="POST" modelAttribute="orgUser" action="/create/user">
   <table>
    <tr>
        <td><form:label path="login">Login</form:label></td>
        <td><form:input path="login" /></td>
        <td><form:errors path="login"  cssClass="error" /></td>
    </tr>
    <tr>
        <td><form:label path="password">Password</form:label></td>
        <td><form:password path="password" /></td>
        <td><form:errors path="password"  cssClass="error" /></td>
    </tr>
    <tr>
        <td><form:label path="password2">Repeat password</form:label></td>
        <td><form:password path="password2" /></td>
        <td><form:errors path="password2"  cssClass="error" /></td>
    </tr>
    <tr>
        <td><label>Role</label></td>
        <td><select name="roleName">
          <option value="ADMIN">ADMIN</option>
  		  <option value="ASSISTANT">NORMAL USER</option>
        </select></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Add" name="add" class="btn btn-default"/>
        </td>
        <td colspan="2">
             <a href="/list" class="btn btn-default">Go Back</a>
        </td>
    </tr>
</table>  
</form:form>

</div>

</body>
</html>