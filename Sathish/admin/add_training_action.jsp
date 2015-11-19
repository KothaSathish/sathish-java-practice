<%@ page import="java.sql.*,java.io.*" session="true"%>  
<!DOCTYPE html>
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
    <h1>Add Training  information</h1>
    <form name="form1" method="post" action="add_training_action.jsp">
      <%@ page import="java.sql.*,java.util.*,java.io.*"%>
      <%

 String addtrain=request.getParameter("addtrain");
 String description=request.getParameter("description");
 Statement st = null;  

 

 
  try
   {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st = con.createStatement();
   st.executeUpdate("insert into training(addtrain,description,assigned_date) values('"+addtrain+"','"+description+"',NOW())");
   
 

   out.println("<h3 align='center'>Training Submitted Successfully&hellip;..</h3>");
	
	 }
	 catch(Exception ab)
	 {
	 out.print("Error:"+ab);
	 }
	 %>
    </form>
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