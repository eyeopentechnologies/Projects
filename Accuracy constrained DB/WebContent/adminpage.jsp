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
           <li><a href="pass.jsp">Change Password</a></li>
           <li><a href="docDetails.jsp">Doctor Detail</a></li>
           <li><a href="patdetails.jsp">Patient Detail</a></li>
		 <!--  <li><a href="navi.jsp">Naive Bayes</a></li>-->
			<li><a href="signout.jsp">Logout</a></li>
			
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<!--<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"> </td>
<td >&nbsp;&nbsp;<a href="original.jsp">Original</a></td>
<td height="44"> </td>
<td >&nbsp;&nbsp;<a href="generalized.jsp">Generalized</a></td>
</tr>

<td height="44"> </td>
<td >&nbsp;&nbsp;<a href="bucketized.jsp">Bucketized</a></td>
<td height="44"> </td>
<td >&nbsp;&nbsp;<a href="multiset.jsp">MultiSet</a></td>
</tr>
<tr>
<td height="44"> </td>
<td >&nbsp;&nbsp;<a href="attribute.jsp">Attribute</a></td>
<td height="44"> </td>
<td >&nbsp;&nbsp;<a href="sliced.jsp">Sliced</a></td>

</table>-->
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
