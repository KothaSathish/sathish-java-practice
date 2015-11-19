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
  <%
    ResultSet rs=null;
	Statement st=null;
	
	ResultSet rs1=null;
	Statement st1=null;
	
	int count=0;
	
	String id=request.getParameter("T_id");
	
	
	String abc = null;
	

try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   st1=con.createStatement();
   rs=st.executeQuery("select * from training");
   rs1=st1.executeQuery("select * from allocate A,training T,register R where A.tname="+id+" and A.tname=T.id and A.employee=R.email");
   //out.print("select * from allocate A,training T,register R where A.tname="+id+" and A.tname=T.id and A.employee=R.email");
   %>
   
  
   
   <!-- content body -->
    
    
    <div id="content">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <section>
        <h1>Track Training Status Of Employees</h1>
        <table>
          <thead>
            <tr>
              <th>Employee Id</th>
              <th>Name</th>
              <th>Phone No</th>
              <th>Assigned Date</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
          <%
           while (rs1.next()) {
if((count%2)==0)
		abc="dark";
	else
		abc="light";
%>
        <tr class="<%=abc %>">
          <td><%=rs1.getString("employee") %></td>
          <td><%=rs1.getString("fname")+" "+rs1.getString("lname")%></td>
          <td><%=rs1.getString("mobile") %></td>
          <td><%=rs1.getString("assigned_date")%></td>
          <td><%=rs1.getString("status")%></td>
        </tr>
        <%
count++;
 }
       %>     
          </tbody>
        </table>
      </section>
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
    </div>
    <!-- right column -->
    <aside id="right_column">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <h2>List of trainings</h2>
      <nav>
        <ul>
        <%
		while(rs.next())
			out.print("<li><a href='track_training1.jsp?T_id="+rs.getString("id")+"'>"+rs.getString("addtrain")+"</a></li>");
}
catch(Exception Ex)
{
	out.print(Ex);	
}
			%>
         
          
        </ul>
      </nav>
      <!-- /nav --><!-- /section --><!-- /section -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
    </aside>
    <!-- / content body -->
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