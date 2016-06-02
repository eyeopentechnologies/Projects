<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
</head>
<body>
<form action = "UserRegistration" method = "post">
User ID : <input type= "text" name="uid" readonly/><br>
User Name : <input type = "text" name= 'uname' required/><br>
Password : <input type = "password" name= 'pass' required/><br>
Blood Group : <input type = "text" name= 'bg' required/><br>
Disease Name : <input type = "text" name= 'dname' required/><br>
Email : <input type = "text" name= 'email' required/><br>
Mobile : <input type = "text" name= 'mobile' required/><br>



</form>
</body>
</html>