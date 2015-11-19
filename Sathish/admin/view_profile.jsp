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
    <h1>View Profile information</h1>
    <p>
      <%
	String s=(String) session.getAttribute("email");
	ResultSet rs=null;
	Statement st=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   rs=st.executeQuery("select * from register where email='"+s+"'");

while (rs.next()) {
%>
    </p>
    <TABLE width="85%" border="0" align="center">
      <tr>
        <td>Full Name</td>
        <td><input type="text" name="fname" size="30" value="<%=rs.getString("fname")%>"/></td>
      </tr>
    <td>Last Name</td>
    <td><input type="text" name="lname" size="30" value="<%=rs.getString("lname")%>"/></td>
  </tr>
  <TR>
    <TD>Email</TD>
    <TD><input type="text" name="email" size="30" value="<%=rs.getString("email")%>" /></TD>
  </TR>
  <TR>
    <TD>Present Address</TD>
    <TD><input type="text" name="preaddress" size="30" value="<%=rs.getString("preaddress")%>" /></TD>
  </TR>
  <TR>
    <TD>Perminent Address</TD>
    <TD><input type="text" name="peraddress" size="30" value="<%=rs.getString("peraddress")%>" /></TD>
  </TR>
  <TR>
    <TD>Maritalstatus</TD>
    <TD><input type="text" name="maritalstatus" size="30" value="<%=rs.getString("maritalstatus")%>"/></TD>
  </TR>
  <TR>
    <TD>Mobile No</TD>
    <TD><input type="text" name="mobile" size="30" value="<%=rs.getString("mobile")%>"/></TD>
  </TR>
  <TR>
    <TD>City</TD>
    <TD><input type="text" name="city" size="30" value="<%=rs.getString("city")%>"/></TD>
  </TR>
  <TR>
    <TD>State</TD>
    <TD><input type="text" name="state" size="30" value="<%=rs.getString("state")%>"/></TD>
  </TR>
  <TR>
    <TD>Nation</TD>
    <TD><input type="text" name="nation" size="30" value="<%=rs.getString("nation")%>" /></TD>
  </TR>
  <TR>
    <TD>Zipcode</TD>
    <TD><input type="text" name="zipcode" size="30" value="<%=rs.getString("zipcode")%>" /></TD>
  </TR>
  <tr>
    <td>Designation</td>
    <TD><input type="text" name="designation" size="30" value="<%=rs.getString("designation")%>" /></TD>
  </tr>
    </table>
    <%
 } 
rs.close();
st.close();

}
catch (Exception ex) {
out.print(ex);
}
%>
<!-- ########################################################################################## -->
    <!-- ########################################################################################## -->
    <!-- ########################################################################################## -->
    <!-- ########################################################################################## -->
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