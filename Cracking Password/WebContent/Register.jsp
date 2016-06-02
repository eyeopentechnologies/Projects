<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRACKING</title>
<link href="Style.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="main">
	<div id="header">
		<h2 align="center"><i><font color="Black">Cracking More Password Hashes With Patterns</font></i></h2>
	</div>
	
	<div id="nav1">
		 
		 <form action="Register" name="loginform" method="post">
			<table>
				<tr>
					<td colspan="2">
						<div id="innerheader1">
							Register Form
						</div>
					</td>
				</tr>
				<tr>
					<td><label id="labl1">Username: </label></td>
					<td><input type="text" name="uname" required/></td>
				</tr>
				<tr>
					<td><label id="labl1">Name: </label></td>
					<td><input type="text" name="name" required/></td>
				</tr>
				<!--  <tr>
					<td><label id="labl1">Password: </label></td>
					<td><input type="hidden" name="upass" required/></td>
				</tr>  -->
				<tr>
					<td><label id="labl1">Email: </label></td>
					<td><input type="text" name="uemail" required/></td>
				</tr>
				<tr>
					<td><label id="labl1">Mobile: </label></td>
					<td><input type="text" name="mobile" required/></td>
				</tr>
				<tr>
					<td><label id="labl1">Gender: </label></td>
					<td>
						<input type="radio" name="gender" value="M" checked="checked"/>
						<label id="labl1">Male</label>
						<input type="radio" name="gender" value="F"/>
						<label id="labl1">Female</label>
					</td>
				</tr>
				<!-- <tr>
					<td><label id="labl1">Unique ID: </label></td>
					<td><input type="text" name="unique_id" required/></td>
				</tr> -->
				<tr>					
					<td colspan="2" align="right" >					
					<input type="submit" value="Register" id="butt1"/>
					<a href="Home.jsp"  id="labl1">Back</a>
					</td>
				</tr>
			</table>	
		</form>
	</div> 
		<div id="navv">
			<img src="imgs/Password.jpg" align="middle" width="100%" height="100%"/>
		</div>
	</div>
	<div id="footer">
		<font color="black">Eyeopen Technologies</font>
	</div>
	
</body>
</html>