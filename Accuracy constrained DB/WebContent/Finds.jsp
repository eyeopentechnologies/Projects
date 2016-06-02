<%@page import="com.util.DbConnector"%>
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
      <div style="font-size:35px;color:white;font-family-verdana;padding:30px 40px 30px 20px;line-height:1.2em;font-weight:bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Privacy Preserving Data Sharing With Anonymous Id Assignment

	  <div align="center">  </div></div>
   </div><!-- end of logo -->
   <div id="navigation">
      <div id="navbar_link">
        <ul>
           <li class="currentpage"><a href="doctorpage.jsp">Back</a></li>
          
        </ul>
      </div>
      </div>
  </div>
<div id="innerwrapper">
<table align="center" width="1020">
<tr>
<td width="364" valign="top">
<table align="center" width="336">

</table>
</td>
<td width="644" valign="top">
<table align="center" width="500">

<div style="width:400px;height:80px;">
       <div align="center" class="paragraping1"><font  color="BLUE" size="5">File Upload</font></div> <br>
        <label for="txtEmail" id>
       <%
           String t3 = request.getParameter("name");
           String val1 =null;
            String val2 = null;
             String val3 = null; 
           Connection con = null;
        PreparedStatement pstm = null;
          try {
              System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            con=DbConnector.getConnection();
            String sql= "select * from adding";// where sym='"+t3+"' ";
              System.out.println("..."+sql);
            pstm=con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery(sql);
            while(rs.next()){
                 val1 = rs.getString("dise");
                 val2 = rs.getString("sym");
                 val3 = rs.getString("des");
            }
            if(val1.indexOf(t3)>=0 || val2.indexOf(t3)>=0 || val3.indexOf(t3)>=0)
             {
          
       %>
                <tr>Disease::  <textArea name="dis" value<%=val1%>></textArea><br></tr>
          Symptom:: <textArea name="sym" value<%=val2%>></textArea><br>
          Description::  <textArea name="des" value<%=val3%>></textArea><br>
<%
      //out.print("Yes word is found successfully");
          //   out.println(val1+"////");
         //    out.println(val2+"////");
         //    out.println(val3+"////");
             
             }
            
              System.out.println(val1+val2+val3);
        } catch(Exception e){
            e.printStackTrace();
        }
%>
           
	
    
</div>

     
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
