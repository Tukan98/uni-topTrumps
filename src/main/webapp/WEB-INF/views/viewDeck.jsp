<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<!-- source: http://www.textfixer.com/tutorials/css-table-alternating-rows.php -->

<style type="text/css">

	.AlignCenter {
		text-align:center;
	}
	.deck {
		display: inline-block;
  		box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  		transition: 0.3s;
  		width: 33%;
  		border-radius: 5px;
  		padding: 2px 16px;
	}
	
	.deck:hover {
  		box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
	}
	
	.container {
 		 padding: 2px 16px;
	}
	
	a span {
  		cursor: pointer;
  		display: inline-block;
  		position: relative;
  		transition: 0.5s;
	}

	a span:after {
 		content: '\00bb';
 	 	position: absolute;
  		opacity: 0;
  		top: 0;
  		right: -20px;
  		transition: 0.5s;
	}

	a:hover span {
  		padding-right: 25px;
	}

	a:hover span:after {
  		opacity: 1;
  		right: 0;
	}
	
</style>

<head>
    <title>View Deck</title>
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">    
</head>

<body>

	<h2 class = "AlignCenter">View Decks</h2>
	
	<section>
	<h2 class = "AlignCenter">
		<a href="/list" class="btn btn-default">
			<span>
				Back to main page
			</span>
		</a>
	</h2>
	</section>
	
	<section>
		<%-- <table class="container"> --%>
			<%--<tr>
			  <td style="width: 266px; "><h3>Name</h3></td>
			  <td><h3>Background</h3></td>
			  <td><h3>Attribute 1</h3></td>
			  <td><h3>Attribute 2</h3></td>
			  <td><h3>Attribute 3</h3></td>
			  <td><h3>Attribute 4</h3></td>
			  <td><h3>Attribute 5</h3></td>
			  <td><h3>Attribute 6</h3></td>
			  <td><h3></h3></td>
			</tr> --%>
			<c:forEach items="${deck}" var="deck">
				<div class = "deck">
				<div class="container">
					<h4><c:out value = "${deck.getName()}"/></h4>
					<section>Background: <c:out value= "${deck.getImgCover()}"/></section>
					<section>Attribute 1:  <c:out value="${deck.getAt1()}"/></section>
					<section>Attribute 2:  <c:out value="${deck.getAt2()}"/></section>
					<section>Attribute 3:  <c:out value="${deck.getAt3()}"/></section>
					<section>Attribute 4:  <c:out value="${deck.getAt4()}"/></section>
					<section>Attribute 5:  <c:out value="${deck.getAt5()}"/></section>
					<section>Attribute 6:  <c:out value="${deck.getAt6()}"/></section>
				
					<b><a href="/view/deleteDeck?deckId=${deck.getId()}">Delete</a></b>
				</div>
				</div>
			</c:forEach>
	</section>
</body>
</html>
