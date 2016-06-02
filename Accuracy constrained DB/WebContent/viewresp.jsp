<%@ page import="java.sql.*,databaseconnection.*"%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Privacy Preseving Data Sharing With Anonymous Id Assignment</title>

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
           <li class="currentpage"><a href="patientpage.jsp">Home</a></li>
           <li><a href="view.jsp">Your Details</a></li>
          
			<li><a href="passchange.jsp">Change Password</a></li>
              <li><a href = "selectdoc.jsp">Consult Doctor</a></li>
                 <li><a href = "viewresp.jsp">Doctor's Response</a></li>
			<li><a href="signout.jsp">Logout</a></li>
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<% 
    String name=(String)session.getAttribute("name");
	Connection con1=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from patient where name='"+name+"'";
	try
	{
	   con1=databasecon.getconnection();
	    st=con1.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
	     {
		 
		
		 
		 
			String s1=rs.getString(2);
			%>
   
<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="336">
<tr>
<td height="44"> </td>
<td width="328">&nbsp;&nbsp;<a href="view.jsp?<% out.println(rs.getString(2));%>">Your Details</a></td>
</tr>
<tr>
<td height="44"> </td>
<td width="328">&nbsp;&nbsp;<a href="common1.jsp">Common Data</a></td>
</tr>
<tr>
<td height="42"> </td>
<td width="328">&nbsp;&nbsp;<a href="passchange.jsp">Change Password</a></td>
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
<table align="center" width="500">
<tr>
        <td width="80"  colspan="4" align="center" class="paragraping"><font color="BLUE" size="+1">Doctor's Response for &nbsp;&nbsp;<% out.println(rs.getString(2));%></font></td>
		
		
       
		</tr>
		<tr>
		<%
		String pat = (String) session.getAttribute("name");
		System.out.println(pat);
		
		Connection con = databasecon.getconnection();
		PreparedStatement ps = con.prepareStatement("select * from response where pat = ?");
		ps.setString(1, pat);
		ResultSet rs2 = ps.executeQuery();
		int count = 1;
		while(rs2.next()){
		
		%>
		<td width="80"  colspan="4" align="center" class="paragraping"><%= count+". "+rs2.getString("res") %></td>
		
		<%
		count++;
		} %>
		</tr>
	    	
 </table>
 <%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		out.println("Your given didn't match to our database");
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con1.close();
	}
            %>
   
<table align="center" width="500">
<tr>
<td width="648"></td>

</tr><br />
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
