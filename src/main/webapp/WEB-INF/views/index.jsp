<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>CREAT A DECK!</title>
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
        <form:form method="POST" action="/create/deck" modelAttribute="Deck">
             <table>

                <tr>
                    <td><form:label path="name">Name</form:label></td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td><form:label path="imgCover">Background</form:label></td>
                    <td><form:input path="imgCover"/></td>
                </tr>
                <tr>
                    <td><form:label path="at1">Attribute 1</form:label></td>
                    <td><form:input path="at1"/></td>
                </tr>
                <tr>
                    <td><form:label path="at2">Attribute 2</form:label></td>
                    <td><form:input path="at2"/></td>
                </tr>
                
                <tr>
                    <td><form:label path="at3">Attribute 3</form:label></td>
                    <td><form:input path="at3"/></td>
                </tr>
                <tr>
                    <td><form:label path="at4">Attribute 4</form:label></td>
                    <td><form:input path="at4"/></td>
                </tr>
                
                <tr>
                    <td><form:label path="at5">Attribute 5</form:label></td>
                    <td><form:input path="at5"/></td>
                </tr>
                <tr>
                    <td><form:label path="at6">Attribute 6</form:label></td>
                    <td><form:input path="at6"/></td>
                </tr>
                <tr>
                        <td colspan="2">
            <input type="submit" value="Add" name="add" class="btn btn-default"/>
                    <td colspan="2">
           <a href="/list" class="btn btn-default">Go Back</a>
        </td>
        </td>
        </tr>

            </table>
        </form:form>

<p>


</p>

	 
		


</div>

</body>
</html>