<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page import="java.sql.*,java.io.*" session="true"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>Competitive</title>
<meta charset="iso-8859-1">
<link rel="stylesheet" href="../styles/layout.css" type="text/css">
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
    <h1>View All  Employee  information</h1>
     
     <%
	 String course=request.getParameter("id");
 String img_id=request.getParameter("img_id");
 String img_path=request.getParameter("img_path");
 String prev_image=request.getParameter("prev_image");
 
    Statement st=null;
	Statement st1=null;
	Statement st2=null;
	
	String s = null;
	String y = null,z=null;
	String sql2=null;
	String sql3=null;
	int ef=1;
	
	String abc=null;

	String ab= null,cd=null;
	
    ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	//ResultSet rs3=null;
	Connection con=null;
	
    String email=(String) session.getAttribute("email");
	
	try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   st1=con.createStatement();
   st2=con.createStatement();
   
   if(img_path == null)
   {
   	sql2 = "select * from training2  where choosetrain='"+course+"' ";
   }
   else
   {
   	sql2 = "select * from training2  where choosetrain='"+course+"' and id>='"+img_id+"' ";
   }
   
   rs2=st2.executeQuery(sql2);
   rs2.next();
	
	if(img_path == null)
	{
	s="../admin/"+rs2.getString("image");
	}
	else
	{
	s=img_path;
    }
   if(rs2.next())
	{
	 y = "../admin/"+rs2.getString("image");
	 z = rs2.getString("id");
	}

    
    %>
    
    <form NAME="form1" align="center">
<table width="100%" border="1">
  <tr>
    <td align="center"><h1>Images</h1></td>
  </tr>
  <tr>
    <td align="center"><img src="<%=s %>" width="500" height="600" ></td>
  </tr>
  <tr>
    <td align="center">
	
	
	
    <%
	if(prev_image.equals("1"))
	{
	%>
	<A HREF="javascript:history.go(-1)" id="h1">Previous</A>
	
	 <%
	 }
	%>
	
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
  
   <%
	if(y==abc)
	{
	%>
	<a href="test.jsp?" onClick="finish_image();"  id="h3">Finish</a>
	<%
	}
	%>
	
	<%
	if(y!=abc)	
	{
	%>
	<a href="gothrough_training1.jsp?id=<%=course%>&img_path=<%=y %>&img_id=<%=z %>&prev_image=<%=ef%>" onClick="next_image();" id="h2" name="h2" >Next Slide</a>
    <%
	}
	}
	catch(Exception EX)
	{
		out.print(EX);
	}
	%>
  </tr>
</table>


</form>

<p>
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- / content body -->
    </p>
  </div>
</div>
<%@ include file="../footer.jsp" %>
<script>
$(document).ready(function () {
    $("#nl_name, #nl_email").defaultvalue("Name", "Email Address");
});
</script>
</body>
</html>