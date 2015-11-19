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
    <h1>Update Profile information</h1>
    <p>
      <%
	
	String s1=request.getParameter("fname");
	String s2=request.getParameter("lname");
	String s=(String) session.getAttribute("email");
	String s3=request.getParameter("preaddress");
	String s4=request.getParameter("peraddress");
	String s5=request.getParameter("maritalstatus");
	String s6=request.getParameter("mobile");
	String s7=request.getParameter("city");
	String s8=request.getParameter("state");
	String s9=request.getParameter("nation");
	String s10=request.getParameter("zipcode");
	String s11=request.getParameter("designation");
	
try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   Statement st=con.createStatement();
   st.executeUpdate("update register set fname='"+s1+"',lname='"+s2+"',email='"+s+"',preaddress='"+s3+"',peraddress='"+s4+"',maritalstatus='"+s5+"',mobile='"+s6+"',city='"+s7+"',state='"+s8+"',nation='"+s9+"',zipcode='"+s10+"',designation='"+s11+"'  where email='"+s+"' and position='admin'");
   out.println("<h4 style=color:red;text-align:center>update successfully</h4>");
   }
   catch(Exception ef)
   {
   out.println(ef);
   }
   
%>
    </p>
    <p><!-- ########################################################################################## -->
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