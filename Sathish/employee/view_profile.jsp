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
    
		  <%
 
    //String email=(String)session.getAttribute("email");
  	Statement st2=null;
	ResultSet rs2=null;
    Connection con2=null;
	String email=(String) session.getAttribute("email");
	
	
	
try{
  
   Class.forName("com.mysql.jdbc.Driver");
   con2=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
  
   st2=con2.createStatement();
   rs2=st2.executeQuery("select * from register where email='"+email+"' ");
  while(rs2.next())
  {
  %>
  
   	<form action="update.jsp" method="post">	
    <table align="center" border="0">
	

 <tr>
   <td>FName</td>
 <td><input type="text" name="fname" size="30" value="<%=rs2.getString("fname")%>"/> </td>
</tr>
<tr>
  <td>LName</td>
 <td><input type="text" name="lname" size="30" value="<%=rs2.getString("lname")%>"/> </td>
</tr>



<TR>
  <TD>Email</TD>
  <TD><input type="text" name="email" size="30" value="<%=rs2.getString("email")%>" /></TD>
  </TR>
  
  
  <TR>
  <TD>present Address</TD>
  <TD><input type="text" name="preaddress" size="30" value="<%=rs2.getString("preaddress")%>" /></TD>
  </TR>

  
    <TR>
  <TD>Permenent Address</TD>
  <TD><input type="text" name="peraddress" size="30" value="<%=rs2.getString("peraddress")%>" /></TD>
  </TR>
  
  
      <TR>
  <TD>Gender</TD>
  <TD><input type="text" name="gender" size="30" value="<%=rs2.getString("gender")%>" /></TD>
  </TR>

  
    <TR>
  <TD>Marital Status</TD>
  <TD><input type="text" name="maritalstatus" size="30" value="<%=rs2.getString("maritalstatus")%>" /></TD>
  </TR>

  
  
    
    <TR>
  <TD>Mobile No</TD>
  <TD><input type="text" name="mobile" size="30" value="<%=rs2.getString("mobile")%>" /></TD>
  </TR>

  
    <TR>
  <TD>City</TD>
  <TD><input type="text" name="city" size="30" value="<%=rs2.getString("city")%>" /></TD>
  </TR>

  
    <TR>
  <TD>State</TD>
  <TD><input type="text" name="state" size="30" value="<%=rs2.getString("state")%>" /></TD>
  </TR>

  
    <TR>
  <TD>Nation</TD>
  <TD><input type="text" name="nation" size="30" value="<%=rs2.getString("nation")%>" /></TD>
  </TR>
  
  
    <TR>
  <TD>Zip Code</TD>
  <TD><input type="text" name="zipcode" size="30" value="<%=rs2.getString("zipcode")%>" /></TD>
  </TR>

  
   <TR>
  <TD>University Name</TD>
  <TD><input type="text" name="uname" size="30" value="<%=rs2.getString("uname")%>" /></TD>
  </TR>

  
    <TR>
  <TD>Year Of Complete</TD>
  <TD><input type="text" name="yearcomplete" size="30" value="<%=rs2.getString("yearcomplete")%>" /></TD>
  </TR>
 
  
     <TR>
  <TD>Percentage</TD>
  <TD><input type="text" name="percentage" size="30" value="<%=rs2.getString("percentage")%>" /></TD>
  </TR>
 
  <TR>
  <TD>Place Of Birth</TD>
  <TD><input type="text" name="placeob" size="30" value="<%=rs2.getString("placeob")%>" /></TD>
  </TR>
  
  
  
  <TD>Date Of Birth</TD>
  <TD><input type="text" name="dod" size="30" value="<%=rs2.getString("dod")%>-<%=rs2.getString("dom")%>-<%=rs2.getString("doy")%>" /></TD>
  </TR>

  
 
	
	<TR>
  <TD>Date Of Joining</TD>
  <TD><input type="text" name="dodj" size="30" value="<%=rs2.getString("dodj")%>-<%=rs2.getString("domj")%>-<%=rs2.getString("doyj")%>"/></TD>
  </TR>
	


  	
		  <tr>
        <td>Religion</td>
        <TD><input type="text" name="religion" size="30" value="<%=rs2.getString("religion")%>"/></TD>
		</tr>
		
		  <tr>
        <td>Designation</td>
        <TD><input type="text" name="designation" size="30" value="<%=rs2.getString("designation")%>"/></TD>
		</tr>
		
		  <tr>
        <td>Previous Company</td>
        <TD><input type="text" name="previouscompany" size="30" value="<%=rs2.getString("previouscompany")%>"/></TD>
		</tr>
		  <tr>
        <td>Previous Designation</td>
        <TD><input type="text" name="previousdesignation" size="30" value="<%=rs2.getString("previousdesignation")%>"/></TD>
		</tr>
		
		
		<tr>
        <td>Father Name</td>
        <TD><input type="text" name="fathername" size="30" value="<%=rs2.getString("fathername")%>"/></TD>
		</tr>
		  <tr>
        <td>Mother Name</td>
        <TD><input type="text" name="mothername" size="30" value="<%=rs2.getString("mothername")%>"/></TD>
		</tr>
		 <tr>
        <td>Wife Name</td>
        <TD><input type="text" name="wifename" size="30" value="<%=rs2.getString("wifename")%>"/></TD>
		</tr>
		  <tr>
        <td>Child1 Name</td>
        <TD><input type="text" name="childname1" size="30" value="<%=rs2.getString("childname1")%>"/></TD>
		</tr>
		 <tr>
        <td>Child2 Name</td>
        <TD><input type="text" name="childname2" size="30" value="<%=rs2.getString("childname2")%>"/></TD>
		</tr>
		 <tr>
        <td>Child3 Name</td>
        <TD><input type="text" name="childname3" size="30" value="<%=rs2.getString("childname3")%>"/></TD>
		</tr>
		 <tr>
        <td>Child4 Name</td>
        <TD><input type="text" name="childname4" size="30" value="<%=rs2.getString("childname4")%>"/></TD>
		</tr>
	

	
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