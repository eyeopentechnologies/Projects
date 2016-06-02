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
	<form action = "" method= "post">
<table align="center" width="500">
<tr>
        <td width="80"  colspan="4" align="center" class="paragraping"><font color="BLUE" size="+1">Welcome!&nbsp;&nbsp;<% out.println(rs.getString(2));%></font></td>
		
		
       
		</tr>
	
<tr>
<td>Select Doctor</td>
<td>
<select name= "doc">
<%Connection con = databasecon.getconnection();
PreparedStatement ps = con.prepareStatement("select * from doctor");
ResultSet rs2 = ps.executeQuery();
while(rs2.next()){
	
	%>
<option value ='<%= rs2.getString("did")%>'><%=rs2.getString("name")+ " ("+rs2.getString("qua")+") ("+rs2.getString("des")+")" %></option>
<%

}
%>
</select>


</td>

</tr>
<tr><td></td><td><input type= "submit" value= "Consult"/></td>
</tr>
  	<%
try{
String doc = request.getParameter("doc");
String user = request.getParameter("user");
PreparedStatement ps2 = con1.prepareStatement("insert into consult(patient,doctor) values(?,?)");
ps2.setString(1, user);
ps2.setString(2, doc);
int s=ps2.executeUpdate();
if(s>0){
%>

<tr><td>
<h2>Requested for consulting to doctor</h2></td></tr>
<%
}
}catch(Exception e){
	
}
con1.close();
%>
 </table>
 <input type= "hidden" name= "user" value= "<%= name %>"/>
 </form>
 <%
			
	     }
		
	  
	}
	catch(SQLException e1)
	{
		//out.println("Your given didn't match to our database");
	//	System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	     
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
