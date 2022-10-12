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
<h1>Create Todo</h1>

<form onsubmit="return compare()" action="" id="player1">
<div class="cards">
	<div id="yourCard">
		<img src="images/Germany.gif" alt="Germany" id="P1Flag">
		<strong>Your Card:<br><span id="P1Name">Mercedes-Benz McLaren SLR</span></strong>
		<p>
			<img src="images/car_thumbs/mercedesslr.jpg" alt="Mercedes-Benz McLaren SLR" id="P1Car">
		</p>
		<table cellspacing="1" cellpadding="1" border="0">
			<tbody><tr>
				<th>Engine: </th>
				<td><input name="p1" value="engine" id="engine" type="radio" accesskey="E"><label for="engine" id="P1Engine"><span class="hide">Engine </span>5439cc</label></td>
				<th>BHP: </th>
				<td><input name="p1" value="bhp" id="bhp" type="radio" accesskey="B"><label for="bhp" id="P1BHP"><span class="hide">BHP </span>616bhp</label></td>
			
			</tr>
			<tr>
				<th>RPM: </th>
				<td><input name="p1" id="rpm" value="rpm" type="radio" accesskey="R"><label for="rpm" id="P1RPM"><span class="hide">RPM </span>6500rpm</label></td>
				<th>0-60mph: </th>
				<td><input name="p1" id="accel" value="accel" type="radio" accesskey="A"><label for="accel" id="P1Accel"><span class="hide">0-60 </span>3.7secs</label></td>
			
			</tr>
			<tr>
				<th>Top Speed: </th>
				<td><input name="p1" id="speed" value="topSpeed" type="radio" accesskey="S"><label for="speed" id="P1Speed"><span class="hide">Top Speed </span>207mph</label></td>
				<th>Length: </th>
				<td><input name="p1" id="len" value="length" type="radio" accesskey="L"><label for="len" id="P1Len"><span class="hide">Length </span>453cm</label></td>
			
			</tr>
			<tr>
				<th>Width: </th>
				<td><input name="p1" id="width" value="carWidth" type="radio" accesskey="W"><label for="width" id="P1Width"><span class="hide">Width </span>182cm</label></td>
				<th>Price: </th>
				<td><input name="p1" id="price" value="price" type="radio" accesskey="P"><label for="price" id="P1Price"><span class="hide">Price </span>£313465</label></td>
			
			</tr>
		</tbody></table>
		<span id="yourCards">You Have 16 cards.</span>
	</div>

	<div id="oppCard">
		<img src="images/blank.gif" alt="Opponent Car Country" id="P2Flag">
		<strong>Opponents Card:<br><span id="P2Name">????</span></strong>
		<p>
			<img src="images/bigBlank.gif" alt="Opponent Car Picture" id="P2Car">
		</p>
		<table cellspacing="1" cellpadding="1" border="0">
			<tbody><tr>
				<th>Engine: </th>
				<td id="P2Engine">????cc</td>
				<th>BHP: </th>
				<td id="P2BHP">????bhp</td>
			
			</tr>
			<tr>
				<th>RPM: </th>
				<td id="P2RPM">????rpm</td>
				<th>0-60mph: </th>
				<td id="P2Accel">????secs</td>
			
			</tr>
			<tr>
				<th>Top Speed: </th>
				<td id="P2Speed">????mph</td>
				<th>Length: </th>
				<td id="P2Len">????cm</td>
			
			</tr>
			<tr>
				<th>Width: </th>
				<td id="P2Width">????cm</td>
				<th>Price: </th>
				<td id="P2Price">£????</td>
			
			</tr>
		</tbody></table>
		<span id="oppCards">The Computer Has 14 cards.</span>
	</div>
	<p id="mainCards">Middle Stack: 0</p>
	<p id="matchResult"></p>
	<p><input id="compareButton" value="Compare Cards" type="submit"></p>
</div>

<script type="text/javascript">
setup();
</script>
</form>

</body>
</html>