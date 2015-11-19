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
    <h1>&nbsp;</h1>
    <form action="changepassdata.jsp" method="post">
      <%
	String s=(String) session.getAttribute("email");
    String s0=request.getParameter("opass");
	String s1=request.getParameter("passw");
	String s2=request.getParameter("cpass");
	
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select *  from register where password='"+s0+"' and email='"+s+"'");
  
  rs.next();
  	int count=0;
	count=rs.getRow();
	
  
if(count!=0)
{
	if(s1.equals(s2))
	{

	st.executeUpdate("update register set password='"+s1+"' where email='"+s+"'");
	out.println("<h4 align='center'>Password changed successfully</h4>");
	}
	else
	{
	out.println(" pasword must be same");
	}

}
else
{
out.println("Invalid Current Password");
}
}
catch(Exception e)
{
out.println(e);
}

   
%>
    </form>
    <p>&nbsp;</p><p><!-- ########################################################################################## -->
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