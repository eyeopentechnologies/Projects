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

	background:#FFFFFF url("img/submit.jpg") no-repeat left ;
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
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Slicing: New Approach to Privacy Preserving

	  <div align="center">  </div></div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="patientpage.jsp">Back</a></li>
          
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="340">

</table>
</td>
<td width="644" valign="top">


  
<div style="width:440px;height:300px;">
       <div align="center" class="paragraping1"><font  color="BLUE" size="5">File Upload</font></div> <br>
        <label for="txtEmail" id>
       
         <form method="post" action="SendMail">
                        <table width="90%">
                          
                                   
                              
                            <tr style="height: 40px;"><td>To:</td><td><input type="text" name="to" size="50"/></td></tr>
                                
                            <tr style="height: 40px;"><td>Subject:</td><td> <input type="text"  name="subject" size="50"/></td> </tr>
                            
                            <tr style="height: 40px;"><td>Message:</td><td> <input type="text" name="message" size="50"/></td> </tr>
                                 
                                <tr><td></td><td><input type="submit" value="Send"/></td></tr>
                                   
                                   
                                    
                                    
                        </table>
                    </form>
</div>


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
    <%
    if(request.getParameter("msg")!=null){
        out.println(request.getParameter("msg"));
    }
    %>
</html>