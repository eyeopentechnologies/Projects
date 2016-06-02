<%@ page import="java.sql.*"%>
<html>
    <head>
	<script language="JavaScript">
javascript:window.history.forward(1);
</script>
<head><title>User</title>
    </head>
    <body>
	<form>
	<% 
		String name=(String)session.getAttribute("name");
		session.removeAttribute("name");
		session.invalidate();
    %>	
	<jsp:forward page="index.html"/>
	</form>
       </body> 	
</html>