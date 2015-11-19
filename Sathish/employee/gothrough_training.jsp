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
		Statement st=null;
		ResultSet rs=null;
		
		Statement st1=null;
		ResultSet rs1=null;
		
		Connection con=null;
		
		String id=request.getParameter("id");
	    String email=(String) session.getAttribute("email");

		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
			st=con.createStatement();
			st1=con.createStatement();
			rs=st.executeQuery("select * from training2 where choosetrain='"+id+"'");
			
			rs1=st1.executeQuery("select * from allocate where tname='"+id+"' and employee='"+email+"'");
			rs1.next();
			
			String allocate_id = rs1.getString("id");
			session.setAttribute("AID",allocate_id);
			
	%>
    <table width="29%" border="1" align="center">
      <tr>
        <th>Image</th>
        <th>Go For Test</th>
      </tr>
      <%
	while(rs.next()) {
%>
      <tr>
        <td width="49%"><img src="../admin/<%=rs.getString("image")%>" width="100" height="100" alt="<%=rs.getString("image")%>"/></td>
        <td width="51%"><div align="center"><a href="gothrough_training1.jsp?id=<%=rs.getString(2)%>&img_id=<%=rs.getString(1)%>&prev_image=0">Go</a></div></td>
      </tr>
      <%
  }
  %>
    </table>
    <%
	}
	catch(Exception e){
	out.print(e);
	}
	
	%>
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