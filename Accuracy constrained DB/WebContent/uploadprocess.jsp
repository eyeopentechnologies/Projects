<%@page import="com.util.Utilities"%>
<%@page import="org.apache.commons.io.IOUtils"%>
<%@page import="org.apache.tomcat.util.http.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.io.File"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
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
    <title>Privacy Preseving Data Sharing With Anonymous Id Assignment</title>
    <%
        String TMP_DIR_PATH = "c:\\tmp";
        File tmpDir = new File(TMP_DIR_PATH);
        String[] lines = null;
        int count = 0;
        String size = null;
        String key = null;
        String userid = null;
        String filename = null;
        String nameid="";
        String master="";
        String sec="";
            String pub="";
        try {
            DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
            fileItemFactory.setSizeThreshold(1 * 1024 * 1024); //1 MB
            fileItemFactory.setRepository(tmpDir);
            ServletFileUpload uploadHandler = new ServletFileUpload(fileItemFactory);
            List items = uploadHandler.parseRequest(request);
            Iterator itr = items.iterator();
            int a1;
            int a2;
            
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next();
                if (item.isFormField()) {
                    //     if (item.getFieldName().equals("key_")) {
                    //       key = item.getString();                                                               
                    // }
                } else {
                    String str = IOUtils.toString(item.getInputStream(), "UTF-8");
                    filename = item.getName();
                    //item.getInputStream().
                    lines = str.split("\r\n|\r|\n");
                   nameid= (String)session.getAttribute("name");
                   sec=Utilities.stringtoByte(filename+filename.length());
                   pub=Utilities.stringtoByte(nameid); 
                   master=Utilities.stringtoByte(pub+sec);
                  // a1=Utilities.stringtoByte(filename); 
                  // a2=Utilities.stringtoByte(filename.length()+""); 
                //   master= Integer.toBinaryString((a1&a2)); 
                   
                   // size = lines.length + "";
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
                    <h1><a href="#"></a></h1>
                </div>
                <div id="menu">
                    <ul>
                       
                        <li><a href="index.jsp">Back</a></li>
                        <br class="clearfix" />
                    </ul>
                </div>
            </div>
            <div id="inner">
                <div id="innerwrapper">
                    <%if (request.getParameter("msg") != null) {
                            out.println(request.getParameter("msg"));
                        }%>
                    <h2>Upload Process</h2>
                    <form method="post" action="UploadData">
                                                <input type="hidden" id="fileName" name="fileName" value="<%=filename%>">

                    <table>
                        <tr><td>Public Key:</td><td><input type="text" id="publicKey" name="publicKey" size="50" value="<%=Utilities.stringtoByte(nameid) %>"/></td></tr>
                        <tr><td>File Attribute 1:</td><td><input type="text" id="att1" name="att1" size="50" value="<%=Utilities.stringtoByte(filename) %>"/></td></tr>
                        <tr><td>File Attribute 2:</td><td><input type="text" id="att2" name="att2" size="50" value="<%=Utilities.stringtoByte(lines.length+"") %>"/></td></tr>
                        <tr><td>Master key:</td><td><input type="text" id="master" name="master" size="50"  value="<%= master%>"/></td></tr>
                        <tr><td>Secrete Key:</td><td><input type="text" id="secret" name="secret"  size="50" value="<%=sec%>"/></td></tr>
                        <tr><td>File Content:</td><td><textarea id="block1" name="block1" value="" size="50" style="width: 300px;height: 100px;">
                                    <%
                                        for (int i = count; i < lines.length; i++) {
                                            if (lines[i].trim() == null || lines[i].trim() == "") {
                                                continue;
                                            }
                                            out.println(lines[i]);
                                        }%>
                                </textarea></td></tr>
                                <tr><td><input type="submit" value="Upload"/></td></tr>
                    </table>
                    </form>
                </div>

            </div>

        </div>
                                <div id="footer">
<p align="center"><span style="float:center;">&nbsp;&nbsp;Privacy Preserving Data Sharing With Anonymous Id Assignment</span>
</p>
</div>

    </body>
</html>