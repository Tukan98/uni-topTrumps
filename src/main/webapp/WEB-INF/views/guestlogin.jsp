<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <html>
<style>
.error {
	color: red;
}
div {
    margin: 20px auto;
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
       
            
        </head>

        <body>
         <img src="https://vignette.wikia.nocookie.net/logopedia/images/0/08/Top_Trumps.svg/revision/latest/scale-to-width-down/320?cb=20160628161856" alt="Smiley face" align="middle"></img>
        
            <h1><b><i>  Welcome!</i></b></h1>
            <div>
             
                <a href="/play/comp" class="btn btn-default">Play the Computer!</a>
                --
                <a href="/play/online" class="btn btn-default">Play Online!</a>
              


            </div>
            <c:url value="/logout" var="logoutUrl" />
            <form action="${logoutUrl}" method="get">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <p>
                 </p>
                 <p>
                 <b><i>  RULES: </b></h1>
                 
                 To start the game, click one of the buttons to begin. Each player is shown their cards so that they can see the top card only.

 Player one starts by selecting out a category from the top card (e.g. Height, value 5) The other players then selects out the same category from their cards. The one with the best or highest value wins, and that player collects all the top cards, including their own, and moves them to the bottom of their pile. It is then their turn again to choose a category from the next card.

If two or more cards share the top value or data is not available for that particular subject then all the cards are placed in the middle and the same player chooses again from the next card. The winner of the hand takes the cards in the middle as well.

The person with all the cards at the end is the winner.
                 
                 </p>
                 
                 
                <button type="submit" class="btn"  style="vertical-align:middle"><span>Log out</span></button>
            </form>
        </body>
</div>
        </html>