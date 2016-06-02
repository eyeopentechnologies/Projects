<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
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
var a = document.f.des.value;
if(a=="")
{
alert("Enter Disease Name");
document.f.des.focus();
return false;
}
}
</script>
</head>

<body>
<form action="dis.jsp" name="f" method="get" onSubmit="return valid();">
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
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="1000">
<tr bgcolor="GREEN" style="font-family:verdana;font-size:12px;">
<td height="36">Patient-ID</td>
<td>Name</td>

<td>Disease</td>
<td>DOB</td>
<td>Age</td>
<td>Gender</td>
<td>Zipcode</td>
</tr>
<%  
 ArrayList list1 = new ArrayList();
    String des=request.getParameter("des");
	Connection con1 = null;
	Statement st1 = null;
	ResultSet rs1 = null;
	String pid=null, name=null,dob=null, sal=null, gender=null, zip=null;

	try{
		con1=databasecon.getconnection();
	    st1=con1.createStatement();
		String sql1="select pid,name,des,dob,sal,gender,zip from public where des like '" + '%' + des + '%' + "'";
		rs1=st1.executeQuery(sql1);
		list1.add(sql1);
		
		 while(rs1.next())
		
       {
	   
			pid=rs1.getString(1);
		    name=rs1.getString(2);
		    
			des=rs1.getString(3);
		    dob=rs1.getString(4);
		    sal=rs1.getString(5);
		    gender=rs1.getString(6);
			zip=rs1.getString(7);
			
			
			String s1 = dob;
			String s3 = gender;
			String s4 = zip;
			dob="";gender="";zip="";
			           
		   char[] cc = s1.toCharArray();
		   char[] c2 = s3.toCharArray();
		   char[] c3 = s4.toCharArray();
		   
		   for(int i = 0; i< cc.length; i++)
		   {		  
		   if( i <= 7)
		   {
		   dob = dob + cc[i];
		   }
		   else
		   {
		   dob = dob + "*";
		   }		   
		   }
		   for(int k = 0; k< c2.length; k++)
		   {		  
		   if( k <= 0)
		   {
		   gender = gender + c2[k];
		   }
		   else
		   {
		   gender = gender + " ";
		   }		   
		   }
			 for(int l = 0; l< c3.length; l++)
		   {		  
		   if( l <= 2)
		   {
		   zip = zip + c3[l];
		   }
		   else
		   {
		   zip = zip + "*";
		   }		   
		   }
%>
  <tr style="font-family:verdana;font-size:12px;"> 
    <td> <font color="blue"><%=pid%></font> </td>
	<td> <font color="blue"><%=name%></font> </td>
	<td> <font color="blue"><%=des%></font> </td>
	<td> <font color="blue"><%=dob%></font> </td>
    <td> <font color="blue"><%=sal%></font> </td>
    <td align="left"> <font color="blue"><%=gender%></font> </td>
	<td> <font color="blue"><%=zip%></font> </td>
 
        <%
 dob=null;gender=null; zip=null;   
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
</table>
</td>
</tr>
</table>  <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> 
</div>
<div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;Privacy Preserving Data Sharing With Anonymous Id Assignment</span>
</p>
</div>
</div>
</form>
</body>
</html>
