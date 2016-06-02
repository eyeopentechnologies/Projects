<%@ page import="java.sql.*,databaseconnection.*"%>
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
    <%
    if(request.getParameter("msg")!=null){
        out.println(request.getParameter("msg"));
    }
      if(request.getParameter("m")!=null){
        out.println(request.getParameter("m"));
    }
    %>
<div id="outerwrapper">

<div id="head">
   <div id="logo">
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy Preserving Data Sharing With Anonymous Id Assignment

	  <div align="center">  </div></div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="doctorpage.jsp">Home</a></li>
           <li><a href="search.jsp">Search Disease</a></li>
           <li><a href="common.jsp">Common Data</a></li>
			<li><a href="changepass.jsp">Change Password</a></li>
            <li><a href = "patientrequest.jsp">Patient Request</a></li>
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"> </td>
<td width="328">&nbsp;&nbsp;<a href="search.jsp">Search Data</a></td>
</tr>

<tr>
<td height="42"> </td>
<td width="328">&nbsp;&nbsp;<a href="changepass.jsp">Change Password</a></td>
</tr>
<tr>
<td height="49"> </td>
<td width="328">&nbsp;&nbsp;<a href="signout.jsp">Logout</a></td>
</tr>
<tr>
 
</tr>
</table>
</td>
<td width="644" valign="top">

<%
try{
	String res = request.getParameter("response");
	Connection con = databasecon.getconnection();
	PreparedStatement ps = con.prepareStatement("insert into response (doc,pat,res) values(?,?,?)");
	String docid = (String)session.getAttribute("docid");
	String pid = (String)session.getAttribute("pid");
	ps.setString(1, docid);
	ps.setString(2, pid);
	ps.setString(3, res);
	ps.executeUpdate();
	%>
	<h2>Responded Back Successfully</h2>
	
	<%
	
}catch(Exception e){
	System.out.println(e);
}



%>
<table align="center" width="500">
<form action = "" method= "post">
<tr>
<td width="648"><h2>Enter the response to the patient</h2></td>


</tr>
<tr>
<td>
<textarea rows="30" cols="60" name = "response"></textarea>

</td>

</tr>
<tr>
<td>

</td>
<td>
<input type = "submit" value = "Respond Back"/>

</td>

</tr>
</form>
</table>
</td>
</tr>
</table>   
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;Privacy Preserving Data Sharing With Anonymous Id Assignment</span>
</p>
</div>
</div>
</body>
</html>
