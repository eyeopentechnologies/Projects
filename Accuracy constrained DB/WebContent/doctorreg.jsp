<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<% 
Connection con=null;

ResultSet rs=null;
PreparedStatement ps=null;
    String a=request.getParameter("did");
	String b = request.getParameter("name");
	String c = request.getParameter("pass");
	String d = request.getParameter("qua");
	String e = request.getParameter("des"); 
	String f = request.getParameter("email");
	String g = request.getParameter("mobile");
	String h = request.getParameter("city");
	String i = request.getParameter("dob");
        System.out.println("dob is "+i);
	String j = request.getParameter("sal");
	String k = request.getParameter("addd");
	String l = request.getParameter("gender");
	String m = request.getParameter("zip");



       try
                {	  
	   Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/id_assign","root","root");
ps=con.prepareStatement("INSERT INTO doctor(did,name,pass,qua,des,email,mobile,city,dob,sal,addd,gender,zip,status)VALUES(?,?,?,?,?,?,AES_ENCRYPT(?, 'key'),?,?,AES_ENCRYPT(?, 'key'),?,?,?,?)");
			
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
response.sendRedirect("docreg.jsp?message=successfully Submited");


con.close();
ps.close();


}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>
       
