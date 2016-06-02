<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import="com.util.Utilities"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.util.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
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
           <li class="currentpage"><a href="read.jsp">Back</a></li>
          
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

  <form method="post" action="content.jsp">
                        <table width="90%">
                            <tr style="height: 40px;">
                                <td>
                                
                                        <%
                                        String sql="";
                                        boolean flag=false;
                                        if(request.getParameter("keys").trim()!="" && request.getParameter("keys").trim()!=""){
                                       sql = "select * from upload where id='"+request.getParameter("keys") +"' and key_='"+request.getParameter("key_") +"'";
                                            flag=true;
                                        }else{
                                       sql = "select * from upload where id='"+request.getParameter("keys") +"'";
                                            
                                        }
                                            System.out.println(";;;;;;;;;;;;;;;" + sql);
                                            PreparedStatement pst = null;
                                            Connection conn = null;
                                            try {
                                                conn = DbConnector.getConnection();
                                                pst = conn.prepareStatement(sql);
                                                ResultSet rs = pst.executeQuery();
                                                if (rs.next()) {
                                                    if(flag==true){
                                                    System.out.println("false????");
                                                out.println( Utilities.decryptString(rs.getString(3),rs.getString(4)));
                                                                                               }else{
                                                        out.println(rs.getString(3));
                                                                                               }
                                        }else{
                                                    out.println("In valid Key");
                                        }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }%>
                                </td></tr>
                        </table>
                                    
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
