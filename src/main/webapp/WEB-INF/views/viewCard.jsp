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
    <title>View Cards</title>
    <link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">    
</head>

<body>
<h2 class = "AlignCenter">View Cards</h2>

<section>
<h2 class = "AlignCenter">
	<a href="/list" class="btn btn-default">
		<span>
			Main page
		</span>
	</a>
</h2>
</section>

<section>

<c:forEach items="${cards}" var="cards">
<div class = "deck">
<div class = "container">

	<h4><c:out value="${cards.getName()}"/></h4>
	<section>Background: <c:out value="${cards.getImgCover()}"/></section>
	<section>Attribute 1:  <c:out value="${cards.getAt1()}"/></section>
	<section>Attribute 2:  <c:out value="${cards.getAt2()}"/></section>
	<section>Attribute 3:  <c:out value="${cards.getAt3()}"/></section>
	<section>Attribute 4:  <c:out value="${cards.getAt4()}"/></section>
	<section>Attribute 5:  <c:out value="${cards.getAt5()}"/></section>
	<section>Attribute 6:  <c:out value="${cards.getAt6()}"/></section>
	<section>Deck:         <c:out value ="${cards.getDeck()}"/></section>
	
	<b><a href="/view/deleteCards?cardId=${cards.getId()}">Delete</a></b>

</div>
</div>
</c:forEach>

</section>
</body>
</html>
