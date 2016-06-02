<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;

PreparedStatement ps=null;

    String a=request.getParameter("pid");
	String b = request.getParameter("name");
	String c = request.getParameter("pass");
	String d = request.getParameter("qua");
	String e = request.getParameter("des"); 
	String f = request.getParameter("email");
	String g = request.getParameter("mobile");
	String h = request.getParameter("city");
	String i = request.getParameter("dob");
	String j = request.getParameter("sal");
	String k = request.getParameter("addd");
	String l = request.getParameter("gender");
	String m = request.getParameter("zip");



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/id_assign","root","root");
ps=con.prepareStatement("INSERT INTO patient(pid,name,pass,qua,des,email,mobile,city,dob,sal,addd,gender,zip,status)VALUES(?,?,?,AES_ENCRYPT(?, 'key'),?,?,AES_ENCRYPT(?, 'key'),?,?,?,?,?,?,?)");
			
ps.setString(1,a);
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,e);
ps.setString(6,f);
ps.setString(7,g);
ps.setString(8,h);
ps.setString(9,i);
ps.setString(10,j);
ps.setString(11,k);
ps.setString(12,l);
ps.setString(13,m);
ps.setString(14,"Yes");

int s = ps.executeUpdate();
response.sendRedirect("patreg.jsp?message=successfully Submited");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
<% 
Connection con1=null;

ResultSet rs1=null;

PreparedStatement ps1=null;

    String a1=request.getParameter("pid");
	String b1 = request.getParameter("name");
	String c1 = request.getParameter("pass");
	String d1 = request.getParameter("qua");
	String e1 = request.getParameter("des"); 
	String f1= request.getParameter("email");
	String g1 = request.getParameter("mobile");
	String h1 = request.getParameter("city");
	String i1 = request.getParameter("dob");
	String sal = request.getParameter("sal");
	String k1 = request.getParameter("addd");
	String l1 = request.getParameter("gender");
	String m1 = request.getParameter("zip");

    if(Integer.parseInt(sal)>=1 && Integer.parseInt(sal) <=30)
	{
	sal="1-30";
	}
   else if(Integer.parseInt(sal)>=31 && Integer.parseInt(sal)<=60)
	{
	sal="31-60";
	}
	 else if(Integer.parseInt(sal)>=61 && Integer.parseInt(sal)<=90)
	{
	sal="61-90";
	}

       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/id_assign","root","root");
ps1=con1.prepareStatement("INSERT INTO public(pid,name,pass,qua,des,email,mobile,city,dob,sal,addd,gender,zip,status)VALUES(?,?,?,AES_ENCRYPT(?, 'key'),?,?,AES_ENCRYPT(?, 'key'),?,?,?,?,?,?,?)");
			
ps1.setString(1,a1);
ps1.setString(2,b1);
ps1.setString(3,c1);
ps1.setString(4,d1);
ps1.setString(5,e1);
ps1.setString(6,f1);
ps1.setString(7,g1);
ps1.setString(8,h1);
ps1.setString(9,i1);
ps1.setString(10,sal);
ps1.setString(11,k1);
ps1.setString(12,l1);
ps1.setString(13,m1);
ps1.setString(14,"Yes");

int s1 = ps1.executeUpdate();
response.sendRedirect("patreg.jsp?message=successfully Submited");


con1.close();
ps1.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
       
