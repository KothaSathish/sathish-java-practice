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
 
    //String email=(String)session.getAttribute("email");
  	Statement st2=null;
	ResultSet rs2=null;
    Connection con2=null;
	
	
	
try{
	String email=(String) session.getAttribute("email");
   Class.forName("com.mysql.jdbc.Driver");
   con2=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st2=con2.createStatement();
   rs2=st2.executeQuery("select * from register where email='"+email+"' ");
  while(rs2.next())
  {
  %>
    </p>
    <form action="update_profile_action.jsp" method="post">
      <table align="center" border="0">
        <tr>
          <td>FName</td>
          <td><input type="text" name="fname" size="30" value="<%=rs2.getString("fname")%>"/></td>
        </tr>
  <td>LName</td>
    <td><input type="text" name="lname" size="30" value="<%=rs2.getString("lname")%>"/></td>
  </tr>
  <tr>
    <td>Email</td>
    <td><input type="text" name="email" size="30" value="<%=rs2.getString("email")%>" /></td>
  </tr>
  <tr>
    <td>present Address</td>
    <td><input type="text" name="preaddress" size="30" value="<%=rs2.getString("preaddress")%>" /></td>
  </tr>
  <tr>
    <td>Permenent Address</td>
    <td><input type="text" name="peraddress" size="30" value="<%=rs2.getString("peraddress")%>" /></td>
  </tr>
  <tr>
    <td>Gender</td>
    <td><input type="text" name="gender" size="30" value="<%=rs2.getString("gender")%>" readonly/></td>
  </tr>
  <tr>
    <td>Marital Status</td>
    <td><input type="text" name="maritalstatus" size="30" value="<%=rs2.getString("maritalstatus")%>" /></td>
  </tr>
  <tr>
    <td>Mobile No</td>
    <td><input type="text" name="mobile" size="30" value="<%=rs2.getString("mobile")%>" /></td>
  </tr>
  <tr>
    <td>City</td>
    <td><input type="text" name="city" size="30" value="<%=rs2.getString("city")%>" /></td>
  </tr>
  <tr>
    <td>State</td>
    <td><input type="text" name="state" size="30" value="<%=rs2.getString("state")%>" /></td>
  </tr>
  <tr>
    <td>Nation</td>
    <td><input type="text" name="nation" size="30" value="<%=rs2.getString("nation")%>" /></td>
  </tr>
  <tr>
    <td>Zip Code</td>
    <td><input type="text" name="zipcode" size="30" value="<%=rs2.getString("zipcode")%>" /></td>
  </tr>
  <tr>
    <td>University Name</td>
    <td><input type="text" name="uname" size="30" value="<%=rs2.getString("uname")%>" /></td>
  </tr>
  <tr>
    <td>Year Of Complete</td>
    <td><input type="text" name="yearcomplete" size="30" value="<%=rs2.getString("yearcomplete")%>" /></td>
  </tr>
  <tr>
    <td>Percentage</td>
    <td><input type="text" name="percentage" size="30" value="<%=rs2.getString("percentage")%>" /></td>
  </tr>
  <tr>
    <td>Place Of Birth</td>
    <td><input type="text" name="placeob" size="30" value="<%=rs2.getString("placeob")%>" /></td>
  </tr>
  <tr>
    <td>Date Of Birth</td>
    <td><input type="text" name="dod" size="30" value="<%=rs2.getString("dod")%>-<%=rs2.getString("dom")%>-<%=rs2.getString("doy")%>" readonly /></td>
  </tr>
  <tr>
    <td>Date Of Joining</td>
    <td><input type="text" name="dodj" size="30" value="<%=rs2.getString("dodj")%>-<%=rs2.getString("domj")%>-<%=rs2.getString("doyj")%>" readonly/></td>
  </tr>
  <tr>
    <td>Religion</td>
    <td><input type="text" name="religion" size="30" value="<%=rs2.getString("religion")%>"/></td>
  </tr>
  <tr>
    <td>Designation</td>
    <td><input type="text" name="designation" size="30" value="<%=rs2.getString("designation")%>"/></td>
  </tr>
  <tr>
    <td>Previous Company</td>
    <td><input type="text" name="previouscompany" size="30" value="<%=rs2.getString("previouscompany")%>"/></td>
  </tr>
  <tr>
    <td>Previous Designation</td>
    <td><input type="text" name="previousdesignation" size="30" value="<%=rs2.getString("previousdesignation")%>"/></td>
  </tr>
  <tr>
    <td>Father Name</td>
    <td><input type="text" name="fathername" size="30" value="<%=rs2.getString("fathername")%>" readonly/></td>
  </tr>
  <tr>
    <td>Mother Name</td>
    <td><input type="text" name="mothername" size="30" value="<%=rs2.getString("mothername")%>" readonly/></td>
  </tr>
  <tr>
    <td>Wife Name</td>
    <td><input type="text" name="wifename" size="30" value="<%=rs2.getString("wifename")%>" readonly/></td>
  </tr>
  <tr>
    <td>Child1 Name</td>
    <td><input type="text" name="childname1" size="30" value="<%=rs2.getString("childname1")%>" readonly/></td>
  </tr>
  <tr>
    <td>Child2 Name</td>
    <td><input type="text" name="childname2" size="30" value="<%=rs2.getString("childname2")%>" readonly/></td>
  </tr>
  <tr>
    <td>Child3 Name</td>
    <td><input type="text" name="childname3" size="30" value="<%=rs2.getString("childname3")%>" readonly/></td>
  </tr>
  <tr>
    <td>Child4 Name</td>
    <td><input type="text" name="childname4" size="30" value="<%=rs2.getString("childname4")%>" readonly/></td>
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