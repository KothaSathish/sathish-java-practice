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
	String s=(String) session.getAttribute("email");
	ResultSet rs=null;
	Statement st=null;
try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   rs=st.executeQuery("select * from register where email='"+s+"'");
   %>
      <%
while (rs.next()) {
%>
    </p>
    <form action="update_profile_action.jsp" method="post">
      <table width="80%" border="0" align="center">
        <tr>
          <td>Full Name</td>
          <td><input type="text" name="fname" size="30" value="<%=rs.getString("fname")%>"/></td>
        </tr>
          <td>Last Name</td>
          <td><input type="text" name="lname" size="30" value="<%=rs.getString("lname")%>"/></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><input type="text" name="email" size="30" value="<%=rs.getString("email")%>" /></td>
        </tr>
        <tr>
          <td>Present Address</td>
          <td><input type="text" name="preaddress" size="30" value="<%=rs.getString("preaddress")%>" /></td>
        </tr>
        <tr>
          <td>Perminent Address</td>
          <td><input type="text" name="peraddress" size="30" value="<%=rs.getString("peraddress")%>" /></td>
        </tr>
        <tr>
          <td>Maritalstatus</td>
          <td><input type="text" name="maritalstatus" size="30" value="<%=rs.getString("maritalstatus")%>"/></td>
        </tr>
        <tr>
          <td>Mobile No</td>
          <td><input type="text" name="mobile" size="30" value="<%=rs.getString("mobile")%>"/></td>
        </tr>
        <tr>
          <td>City</td>
          <td><input type="text" name="city" size="30" value="<%=rs.getString("city")%>"/></td>
        </tr>
        <tr>
          <td>State</td>
          <td><input type="text" name="state" size="30" value="<%=rs.getString("state")%>"/></td>
        </tr>
        <tr>
          <td>Nation</td>
          <td><input type="text" name="nation" size="30" value="<%=rs.getString("nation")%>" /></td>
        </tr>
        <tr>
          <td>Zipcode</td>
          <td><input type="text" name="zipcode" size="30" value="<%=rs.getString("zipcode")%>" /></td>
        </tr>
        <tr>
          <td>Designation</td>
          <td><input type="text" name="designation" size="30" value="<%=rs.getString("designation")%>" /></td>
        </tr>
        <tr>
          <td colspan="2"><div align="center">
            <input type="submit" name="Submit" value="Update" />
          </div></td>
        </tr>
      </table>
    </form>
    <%
 } 
 %>
    <%

rs.close();
st.close();

}
catch (Exception ex) {
out.print(ex);
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