<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRACKING</title>
<link href="Style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    function CheckPasswordStrength(password) {
        var password_strength = document.getElementById("password_strength");
 
        
        if (password.length == 0) {
            password_strength.innerHTML = "";
            return;
        }
 
        
        var regex = new Array();
        regex.push("[A-Z]"); //Uppercase Alphabet.
        regex.push("[a-z]"); //Lowercase Alphabet.
        regex.push("[0-9]"); //Digit.
        regex.push("[$@$!%*#?&]"); //Special Character.
 
        var passed = 0;
 
        
        for (var i = 0; i < regex.length; i++) {
            if (new RegExp(regex[i]).test(password)) {
                passed++;
            }
        }
 
        
        if (passed > 2 && password.length > 8) {
            passed++;
        }
 
        
        var color = "";
        var strength = "";
        switch (passed) {
            case 0:
            case 1:
                strength = "Weak";
                color = "red";
                break;
            case 2:
                strength = "Good";
                color = "darkorange";
                break;
            case 3:
            case 4:
                strength = "Strong";
                color = "green";
                break;
            case 5:
                strength = "Very Strong";
                color = "darkgreen";
                break;
        }
        password_strength.innerHTML = strength;
        password_strength.style.color = color;
    }
</script>
</head>
<body>
	<div id="main">
	<div id="header">
		<h2 align="center"><i><font color="Black">Cracking More Password Hashes With Patterns</font></i></h2>
	</div>
	
	<div id="nav111">
		 
		 <form action="PasswordAnalyzer" name="loginform" method="post">
			<table align="center">
				<tr>
					<td colspan="2">
						<div id="a1">
							Password Creation
						</div>
					</td>
				</tr>
				<!-- <tr>
					<td><label id="labl1">Username: </label></td>
					<td><input type="text" name="uname" required/></td>
				</tr> -->
				<tr>
					<td><label id="a1"> </label></td>
					<td>
						<input type="password" name="upass" id="txtPassword" required onkeyup="CheckPasswordStrength(this.value)"/>						
					</td>					
				</tr> 
				<tr>
					<td colspan="2" align="right" >
					<input type="submit" value="Create" id="butt1"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><span id="password_strength"> </span></td>
				</tr>
			</table>	
		</form>
	</div> 
		<div id="navv">
			<img src="imgs/password-brain.png" align="middle" width="100%" height="100%"/>
		</div>
	</div>
	<div id="footer">
		<font color="black">Eyeopen Technologies</font>
	</div>
	
</body>
</html>