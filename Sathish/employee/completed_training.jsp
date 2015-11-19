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
    <h1>View All  Completed Trainings</h1>

           <%
	ResultSet rs2=null,rs3=null;
	Statement st2=null,st3=null;
	int count=0;
	String abc=null;
	String email=(String) session.getAttribute("email");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
		
		st2=con.createStatement();
//		String SQL="select * from allocate A,training T where A.status='complete' and A.employee='"+email+"' and A.tname=T.id";
		rs2=st2.executeQuery("select * from allocate A,training T where A.status='complete' and A.employee='"+email+"' and A.tname=T.id");
  // out.print(SQL);
  %>
  
   <table>
      <thead>
        <tr>
          <th>Training Name</th>
          <th>Description</th>
          <th>Assigned Date</th>
          <th>Status</th>
          
        </tr>
      </thead>

<%
while (rs2.next()) {
if((count%2)==0)
		abc="dark";
	else
		abc="light";
%>
        <tr class="<%=abc %>">
          <td><%=rs2.getString("addtrain")%></td>
          <td><%=rs2.getString("description") %></td>
          <td><%=rs2.getString("assigned_date")%></td>
          <td>Completed</td>
        </tr>
        <%
count++;
 }


} catch (Exception ex) {
}
%>
 </tbody>
    </table>

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