<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html>
<style>
.error {
	color: red;
}
div {
    margin: 0px auto;
    width:400px;
    
}

button {
margin: 20px auto;
    width:300px;
  display: inline-block;
  border-radius: 4px;
  background-color: #d8b949;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

button:hover span {
  padding-right: 25px;
}

button:hover span:after {
  opacity: 1;
  right: 0;
}

</style>
<div>
        <head>
       
            <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
        </head>

        <body>
         <img src="https://vignette.wikia.nocookie.net/logopedia/images/0/08/Top_Trumps.svg/revision/latest/scale-to-width-down/320?cb=20160628161856" alt="Smiley face" align="middle"></img>
        
            <h1><b><i> The Admin Panel</i></b></h1>
            <div>
                <a href="/create/user" class="btn btn-default">Add User</a>
                --
                <a href="/create/deck" class="btn btn-default">Add Deck</a>
                --
                <a href="/create/card" class="btn btn-default">Add Card</a>
                 <p>
                 </p>
                <a href="/view/user" class="btn btn-default">View Users</a>
                --
                <a href="/view/deck" class="btn btn-default">View Decks</a>
                --
                <a href="/view/cards" class="btn btn-default">View Cards</a>

            </div>
            <c:url value="/logout" var="logoutUrl" />
            <form action="${logoutUrl}" method="get">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <p>
                 </p>
                 
                 
                 
                <button type="submit"  class="btn" style="vertical-align:middle"><span>Log out</span></button>
                
            </form>
        </body>
</div>
        </html>