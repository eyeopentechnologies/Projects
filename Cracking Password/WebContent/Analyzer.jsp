<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRACKING</title>
<link href="Style.css" rel="stylesheet" type="text/css">

</head>
<body>
	<div id="main">
	<div id="header">
		<h2 align="center"><i><font color="Black">Cracking More Password Hashes With Patterns</font></i></h2>
	</div>
	
	<div id="navvv2">
		 <%
		 String str=session.getAttribute("userpass")+"";
		 int i=0,tc=0,cac=0,sac=0,scc=0,nc=0;
			//System.out.println(p.charAt(i));
			for( i=0;i<str.length();i++)
			{
				tc++;
				if(str.charAt(i)>='a'&&str.charAt(i)<='z')
				{
					sac++;
					//System.out.println(str.charAt(i));
					
				}
				else if(str.charAt(i)>='A'&&str.charAt(i)<='Z')
				{
					cac++;
					//System.out.println(str.charAt(i));
					
				}
				else if(str.charAt(i)>='0'&&str.charAt(i)<='9')
				{
					nc++;
					//System.out.println(str.charAt(i));
					
				}
				else if((str.charAt(i)=='!')||(str.charAt(i)=='@')||(str.charAt(i)=='#')||(str.charAt(i)=='*'))
				{
					scc++;
					//System.out.println(str.charAt(i));
				}
			}
		/* out.println("Total no of character"+tc);
		out.println("no of small characters"+sac);
		out.println("no of capital character"+cac);
		out.println("no of numerics"+nc);
		out.println("no of special characters"+scc); */
		 %>
		 <table width="100%">
		 	<tr>
		 		<td align="center">
		 			<h1><font color="red">Total no of character: <%=tc%></font></h1>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td align="center">
		 			<h1><font color="red">No of small characters: <%=sac%></font></h1>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td align="center">
		 			<h1><font color="red">No of capital character: <%=cac%></font></h1>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td align="center">
		 			<h1><font color="red">No of numerics: <%=nc%></font></h1>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td align="center">
		 			<h1><font color="red">No of special characters: <%=scc%></font></h1>
		 		</td>
		 	</tr>
		 	<tr>
		 		<td align="right"><a href="Analyzer1.jsp">Next</a></td>
		 	</tr>
		 </table>
		 		
	</div> 
		<!-- <div id="navv">
			<img src="imgs/Password.jpg" align="middle" width="100%" height="100%"/>
		</div> -->
	</div>
	<div id="footer">
		<font color="black">Eyeopen Technologies</font>
	</div>
	
</body>
</html>