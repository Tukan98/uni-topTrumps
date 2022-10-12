<!DOCTYPE HTML>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create Todo</title>
	<link rel="stylesheet" media="screen" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css">
   	<style>
	.error {
		color: #ff0000;
	}
	
	.errorblock{
		color: #000;
		background-color: #ffEEEE;
		border: 3px solid #ff0000;
		padding:8px;
		margin:16px;
	}
	</style>
</head>
<body>
<h1>Play Against the Computer!</h1>
<form onsubmit="return compare()" action="" id="player1">
<div class="cards">
	<div id="yourCard">
		<img src="images/Union.gif" alt="Union" id="P1Flag">
		<strong>Your Card:<br><big><span id="P1Name">General George Wade</span></big></strong>
		<p><img src="images/car_thumbs/wade.jpg" alt="General George Wade" id="P1Car"></p>
		<table cellspacing="0" cellpadding="1" border="0">
			<tbody><tr bgcolor="#FFFF99">
				<th>Reign: </th>
				<td><input name="p1" value="engine" id="engine" type="radio" accesskey="E"><label for="engine" id="P1Engine"><span class="hide">Engine </span>0 yrs</label></td>
				<th>Wisdom: </th>
				<td><input name="p1" value="bhp" id="bhp" type="radio" accesskey="B"><label for="bhp" id="P1BHP"><span class="hide">BHP </span>100</label></td>

			</tr>
			<tr>
				<th>Courage: </th>
				<td><input name="p1" id="rpm" value="rpm" type="radio" accesskey="R"><label for="rpm" id="P1RPM"><span class="hide">RPM </span>80</label></td>
				<th>Leadership: </th>
				<td><input name="p1" id="accel" value="accel" type="radio" accesskey="A"><label for="accel" id="P1Accel"><span class="hide">0-60 </span>79</label></td>

			</tr>
			<tr bgcolor="#FFFF99">
				<th>Battles: </th>
				<td><input name="p1" id="speed" value="topSpeed" type="radio" accesskey="S"><label for="speed" id="P1Speed"><span class="hide">Top Speed </span>6</label></td>
				<th>Children: </th>
				<td><input name="p1" id="len" value="length" type="radio" accesskey="L"><label for="len" id="P1Len"><span class="hide">Length </span>0</label></td>

			</tr>
			<tr>
				<th>Loyalty: </th>
				<td><input name="p1" id="width" value="carWidth" type="radio" accesskey="W"><label for="width" id="P1Width"><span class="hide">Width </span>93</label></td>
				<th>Death: </th>
				<td><input name="p1" id="price" value="price" type="radio" accesskey="P"><label for="price" id="P1Price"><span class="hide">Price </span>75 yrs</label></td>

			</tr>
		</tbody></table>
		<span id="yourCards">You have 15 cards.</span>
	</div>

	<div id="oppCard">
		<img src="images/blank.gif" alt="Opponent Person Country" id="P2Flag">
		<strong>Opponents Card:<br><big><span id="P2Name">????</span></big></strong>
		<p>
			<img src="images/bigBlank.gif" alt="Opponent Person Picture" id="P2Car">
		</p>
		<table cellspacing="0" cellpadding="1" border="0">
			<tbody><tr bgcolor="#FFFF99">
				<th>Reign: </th>
				<td id="P2Engine">????</td>
				<th>Wisdom: </th>
				<td id="P2BHP">????</td>

			</tr>
			<tr>
				<th>Courage: </th>
				<td id="P2RPM">????</td>
				<th>Leadership: </th>
				<td id="P2Accel">????</td>

			</tr>
			<tr bgcolor="#FFFF99">
				<th>Battles: </th>
				<td id="P2Speed">????</td>
				<th>Children: </th>
				<td id="P2Len">????</td>

			</tr>
			<tr>
				<th>Loyalty: </th>
				<td id="P2Width">????</td>
				<th>Death: </th>
				<td id="P2Price">????</td>

			</tr>
		</tbody></table>
		<span id="oppCards">The Computer has 15 cards.</span>
	</div>
	<p id="mainCards">Middle Stack: 0</p>
	<p id="matchResult">&nbsp;</p>
	<p><input id="compareButton" value="Compare Cards" type="submit"></p>
</div>

<script type="text/javascript">
setup();
</script>
</form>
</body>
</html>
