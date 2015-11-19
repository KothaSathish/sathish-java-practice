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
    <h1>View All  Employee  information</h1>
    <%
	ResultSet rs=null;
	Statement st=null;
	int count=0;
	String abc = null;
	

try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   rs=st.executeQuery("select * from register where position='employee' ");
   
  %>

 
 <table>
      <thead>
        <tr>
          <th>Employee Id</th>
          <th>Name</th>
          <th>Position</th>
          <th>Phone</th>
          <th>View Details</th>
          <th>Update Details</th>
        </tr>
      </thead>
      <tbody>

<%
while (rs.next()) {
	if((count%2)==0)
		abc="dark";
	else
		abc="light";
%>

<tr class="<%=abc %>">
    <td><%=rs.getString("email")%></td>
    <td><%=rs.getString("fname")+" " +rs.getString("lname")%></td>
    <td><%=rs.getString("position")%></td>
    <td><%=rs.getString("mobile")%></td>
    <td><a href="view_emp_details.jsp?email=<%=rs.getString("email")%>">View</a></td>
    <td><a href="update_emp_details.jsp?email=<%=rs.getString("email")%>">Update</a></td>
</tr>
<%
count++;
 }

 %>
      
      </tbody>
    </table>
<%

rs.close();
st.close();
con.close();
} catch (Exception ex) {
}
%>

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