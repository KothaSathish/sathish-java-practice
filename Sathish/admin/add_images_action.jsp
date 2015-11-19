<%@ page import="java.sql.*,java.io.*" session="true"%>  

<html lang="en" dir="ltr">
<head>
<title>Competitive</title>
<meta charset="iso-8859-1">
<link rel="stylesheet" href="../styles/layout.css" type="text/css">
<style type="text/css">
.display {	display:none;
}
</style>
<script src="../scripts/jquery-1.8.2.min.js"></script>
<script src="../scripts/jquery-defaultvalue.js"></script>
<script src="../scripts/jquery-browsercheck.js"></script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="styles/ie.css" type="text/css">
<script src="scripts/ie/html5shiv.min.js"></script>
<![endif]-->
<!-- homepage scripts -->
<script src="../scripts/jquery-slides.min.js"></script>
<script>
$(function () {
    $('#slider').slides({
        preload: true,
        preloadImage: 'images/slider/controls/loading.gif',
        play: 5000,
        pause: 2500,
        hoverPause: true
    });
});
</script>
<!-- / homepage scripts -->
</head>
<body>
<%@ include file="navigation.jsp" %>
<!-- content -->
<div class="wrapper row3">
  <div id="container" class="clear">
    <!-- content body -->
    <!-- ########################################################################################## -->
    <!-- ########################################################################################## -->
    <!-- ########################################################################################## -->
    <!-- ########################################################################################## -->
    <h1>Add Images To Training</h1>
    <p>
      <%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
      <%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
      <%@ page import="org.apache.commons.fileupload.*"%>
      <%@ page import="java.util.*, java.io.*,java.sql.*" session="true"%>
      <%@ page import="java.util.Iterator"%>
      <%@ page import="java.util.List"%>
      <%@ page import="java.io.File"%>
      <%

try
{
String train=(String) session.getAttribute("train");
String addtrain="";
String image="";
String itemName = "";
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{	
	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List items = null;
		try
		{
		items = upload.parseRequest(request);
		}
		catch (FileUploadException e)
		{
		e.getMessage();
		}
 		Iterator itr = items.iterator();
		
			while (itr.hasNext())
			{
				FileItem item = (FileItem) itr.next();
				
					if(item.isFormField())
					{
					String name = item.getFieldName();
					String value = item.getString();
					
					if(name.equals("addtrain"))
	           		{
			   		addtrain=value;
            		}
					if(name.equals("image"))
	           		{
			   		image=value;
            		}
					}//if
					
					else
					{
						try
							{
							itemName = item.getName();
							File savedFile = new File(config.getServletContext().getRealPath("/")+"admin\\img\\"+itemName);
							item.write(savedFile);
							}
							catch(Exception e)
							{
							out.println("Error"+e.getMessage());
							}
					}//else
				}//while
	try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
		Statement st=cn.createStatement();
		st.executeUpdate("insert into training2(choosetrain,image) values('"+addtrain+"','"+"img/"+itemName+"') ");
		out.println("<h3 align='center'>Submitted Successfully..</h3>"); 
		}
		catch(Exception el)
		{
		out.println("Inserting error...."+el.getMessage());
		}
				

		}	//else
		}	//try
		catch (Exception e)
		{
		out.println(e.getMessage());
		}
%>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p><!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- / content body -->
  </p></div>
</div>
<%@ include file="../footer.jsp" %>
<script>
$(document).ready(function () {
    $("#nl_name, #nl_email").defaultvalue("Name", "Email Address");
});
</script>
</body>
</html>