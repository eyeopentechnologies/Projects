﻿<%@ page import="java.sql.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Privacy Preseving Data Sharing With Anonymous Id Assignment</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylegreen.css" rel="stylesheet" type="text/css" />
<style type="text/css">

	#inputArea
	{
	    font-family: verdana;
	    font-size: 13px;
	    margin-bottom: 5px;
	    display: block;
	    padding: 4px;
	    width: 300px;
	}
  .submit {

	font-size:11px;
	font-weight:bold;
	width:94px;
	height:30px;
}
    </style>
<script language="JavaScript">
function valid()
{
var a = document.f.name.value;
var b = document.f.pass.value;
if(a=="")
{
alert("Enter Username");
document.f.name.focus();
return false;
}
if(b=="")
{
alert("Enter Password");
document.f.pass.focus();
return false;
}
}
</script>
</head>

<body>
<div id="outerwrapper">

<div id="head">
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy Preserving Data Sharing With Anonymous Id Assignment

	  <div align="center">  </div></div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
            <li class="currentpage"><a href="adminpage.jsp">Home</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">

<table align="center" width="1020">
<tr bgcolor="GREEN" style="font-family:verdana;font-size:12px;">
<td height="36">Patient-ID</td>
<td>Name</td>
<td>Password</td>
<td>Email</td>
<td>Mobile</td>
<td>DOB</td>
<td>Age</td>
<td>Gender</td>
<td>Zipcode</td>
</tr>
<% 
	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null, pass=null, email=null,mobile=null,dob=null, sal=null, gender=null, zip=null,name=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select pid,name,pass,email,AES_DECRYPT(mobile,'key'),dob,sal,gender,zip from patient ";
		rs1=st1.executeQuery(sql1);
		
		 while(rs1.next())
		
       {
	   
			pid=rs1.getString(1);
		    name=rs1.getString(2);
		    pass=rs1.getString(3);
		    email=rs1.getString(4);
			mobile=rs1.getString(5);
		    dob=rs1.getString(6);
		    sal=rs1.getString(7);
		    gender=rs1.getString(8);
			zip=rs1.getString(9);
		   
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    <td> <font color="blue"><%=pid%></font> </td>
	<td> <font color="blue"><%=name%></font> </td>
    <td> <font color="blue"><%=pass%></font> </td>
    <td> <font color="blue"><%=email%></font> </td>
	<td> <font color="blue"><%=mobile%></font> </td>
	<td> <font color="blue"><%=dob%></font> </td>
    <td> <font color="blue"><%=sal%></font> </td>
    <td> <font color="blue"><%=gender%></font> </td>
	<td> <font color="blue"><%=zip%></font> </td>
 
        <%
      
String pid1=rs1.getString(1);

%>
      
      	
    </tr>
<%
	   }
	 
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    
%>
</table> <br><br> <br><br>   <br><br>   <br><br>   <br><br>   <br><br>   <br><br>    
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;Privacy Preserving Data Sharing With Anonymous Id Assignment</span>
</p>
</div>
</div>
</body>
</html>
