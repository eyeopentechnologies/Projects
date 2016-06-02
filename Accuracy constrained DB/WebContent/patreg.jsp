<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="Error.jsp"%>
<html>
<head>
<title>Privacy Preseving Data Sharing With Anonymous Id Assignment</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link href="stylegreen.css" rel="stylesheet" type="text/css" />
<script language="JavaScript">
function valid()
{
var a = document.f.name.value;
var b = document.f.pass.value;
var c = document.f.qua.value;
var d = document.f.des.value;
var e = document.f.email;
var f = document.f.mobile.value;
var g = document.f.city.value;
var h = document.f.dob.value;
var i = document.f.sal.value;
var j = document.f.addd.value;
var k = document.f.gender.value;
var l = document.f.zip.value;
if(a=="")
{
alert("Enter Your Name");
document.f.name.value;
return false;
}
if(!isNaN(a))
{
alert("Enter Character Only");
document.f.name.value;
return false;
}
if(b=="")
{
alert("Enter Your Password");
document.f.pass.value;
return false;
}
if(c=="")
{
alert("Enter Your Qualification");
document.f.qua.value;
return false;
}
if(d=="")
{
alert("Enter Your Designation");
document.f.des.value;
return false;
}
if (e.value == "")
{
window.alert("Please enter a valid e-mail address.");
e.focus();
return false;
}
if (e.value.indexOf("@", 0) < 0)
{
window.alert("Please enter a valid e-mail address.");
e.focus();
return false;
}
if (e.value.indexOf(".", 0) < 0)
{
window.alert("Please enter a valid e-mail address.");
e.focus();
return false;
}
if(f=="")
    {
        alert("Please enter the Mobile number");
			document.f.mobile.focus();
        return false;
    }
	if(isNaN(f))
    {
        alert("Please enter the Correct Mobile number");
			document.f.mobile.focus();
        return false;
    }
	 if (f.length!=10)
           {
                alert("Enter 10 Integers");
				document.f.mobile.focus();
                return false;
           }
if(g=="")
{
alert("Enter Your City");
document.f.city.value;
return false;
}
if(g=="")
{
alert("Enter Your Date of Birth");
document.f.dob.value;
return false;
}		
if(i=="")
{
alert("Enter Your Salary");
document.f.sal.value;
return false;
}	
if(isNaN(i))
{
alert("Enter Integer Only");
document.f.sal.value;
return false;
}		   
if(j=="")
{
alert("Enter Your Address");
document.f.addd.value;
return false;
}	
if(k=="")
{
alert("Enter Your Gender (Male or Female)");
document.f.gender.value;
return false;
}		
if(l=="")
{
alert("Enter Your Zipcode");
document.f.zip.value;
return false;
}
if(isNaN(l))
{
alert("Enter Integer Only");
document.f.zip.value;
return false;
}
 if (l.length!=6)
           {
                alert("Enter 6 Integers");
				document.f.zip.focus();
                return false;
           }							   
return true;
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
           <li class="currentpage"><a href="index.html">Home</a></li>
           <li><a href="docreg.jsp">Doctor Register</a></li>
           <li><a href="patreg.jsp">Patient Register</a></li>
		    <li><a href="doclog.jsp">Doctor Login</a></li>
			 <li><a href="patlog.jsp">Patient Login</a></li>
           <li><a href="adminlog.jsp">Admin Login</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1015">
<tr>
<td width="364" height="693" valign="top">
<table align="center" width="336">
<tr>
<td height="44"> </td>
<td width="328">&nbsp;&nbsp;<a href="docreg.jsp">Doctor Register</a></td>
</tr>
<tr>
<td height="44"> </td>
<td width="328">&nbsp;&nbsp;<a href="patreg.jsp">Patient Register</a></td>
</tr>
<tr>
<td height="44"> </td>
<td width="328">&nbsp;&nbsp;<a href="doclog.jsp">Doctor Login</a></td>
</tr>
<tr>
<td height="42"> </td>
<td width="328"><a href="patlog.jsp">&nbsp;&nbsp;Patient Login</a></td>
</tr>
<tr>
<td height="49"> </td>
<td width="328"><a href="adminlog.jsp">&nbsp;&nbsp;Admin Login</a></td>
</tr>
<tr>
 
</tr>
</table>
</td>
<td width="639" valign="top">
  
<table align="center" width="600">
       <form name="f" method="post" action="patientreg.jsp" onSubmit="return valid();">

<tr>
<td class="paragraping1" colspan="2" valign="top" align="center"><font color="blue" size="4">Patient Register Here</font></td>
</tr>
<tr>
<td height="42" colspan="2"><br></td>
</tr>
<tr>
<td width="176" height="48">Patient-ID:</td>
<td width="412"><input id="inputArea" type="text" name="pid" value="<%= (int) (Math.random() * 1000) %>"/></td>
</tr>
<tr>
<td width="189" height="48">Username:</td>
<td width="399"><input id="inputArea" type="text" name="name"/></td>
</tr>
<tr>
<td height="45">Password:</td>
<td><input id="inputArea" type="password" name="pass"/></td>
</tr>
<tr>
<td height="40">Blood Group:</td>
<td><input id="inputArea" type="text" name="qua"/></td>
</tr>
<tr>
<td height="49">Disease Name:</td>
<td><input id="inputArea" type="text" name="des"/></td>
</tr>
<tr>
<td height="47">Email:</td>
<td><input id="inputArea" type="text" name="email"/></td>
</tr>
<tr>
<td height="53">Mobile:</td>
<td><input id="inputArea" type="text" name="mobile"/></td>
</tr>
<tr>
<td height="55">City:</td>
<td><input id="inputArea" type="text" name="city"/></td>
</tr>
<tr>
<td height="50">Date of Birth:</td>
<td><input id="inputArea" type="text" name="dob"/></td>
</tr>
<tr>
<td height="46">Age:</td>
<td><input id="inputArea" type="text" name="sal"/></td>
</tr>
<tr>
<td height="46">Address:</td>
<td><input id="inputArea" type="text" name="addd"/></td>
</tr>
<tr>
<td height="43">Gender:</td>
<td><input id="inputArea" type="text" name="gender"/></td>
</tr>
<tr>
<td height="39">Zipcode:</td>
<td><input id="inputArea" type="text" name="zip"/></td>
</tr>
<tr>
<td height="39"></td>
<td><input type="submit" name="sub"   />&nbsp;&nbsp;<input type="reset" name="clear"  ></td>
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