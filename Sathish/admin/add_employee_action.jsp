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
    <h1>Add Employee  information</h1>
    <p>
      <%@ page import="java.sql.*,java.util.*,java.io.*"%>
      <%

 String fname=request.getParameter("fname");
 String lname=request.getParameter("lname");
 String email=request.getParameter("email");
 String password=request.getParameter("password");
 String cpassword=request.getParameter("cpassword");
 String preaddress=request.getParameter("preaddress");
 String peraddress=request.getParameter("peraddress");
 String gender=request.getParameter("gender");
 String maritalstatus=request.getParameter("maritalstatus");
 String mobile=request.getParameter("mobile");
 String city=request.getParameter("city");
 String state=request.getParameter("state");
 String nation=request.getParameter("nation");
 String zipcode=request.getParameter("zipcode");
 String uname=request.getParameter("uname");
 String yearcomplete=request.getParameter("yearcomplete");
 String percentage=request.getParameter("percentage");
 String placeob=request.getParameter("placeob");
 String dod=request.getParameter("dod");
 String dom=request.getParameter("dom");
 String doy=request.getParameter("doy");
 String dodj=request.getParameter("dodj");
 String domj=request.getParameter("domj");
 String doyj=request.getParameter("doyj");
 String religion=request.getParameter("religion");
 String designation=request.getParameter("designation");
 String previouscompany=request.getParameter("previouscompany");
 String previousdesignation=request.getParameter("previousdesignation");
 String fathername=request.getParameter("fathername");
 String mothername=request.getParameter("mothername");
 String wifename=request.getParameter("wifename");
 String childname1=request.getParameter("childname1");
 String childname2=request.getParameter("childname2");
 String childname3=request.getParameter("childname3");
 String childname4=request.getParameter("childname4");

 
  try
   {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   PreparedStatement p1=con.prepareStatement("insert into register(fname,lname,email,password,cpassword,preaddress,peraddress,gender,maritalstatus,mobile,city,state,nation,zipcode,uname,yearcomplete,percentage,placeob,dod,dom,doy,dodj,domj,doyj,religion,designation,previouscompany,previousdesignation,position,fathername,mothername,wifename,childname1,childname2,childname3,childname4) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'employee',?,?,?,?,?,?,?)");
   
   p1.setString(1,fname);
   p1.setString(2,lname);
   p1.setString(3,email);
   p1.setString(4,password);
   p1.setString(5,cpassword);
   p1.setString(6,preaddress);
   p1.setString(7,peraddress);
   p1.setString(8,gender);
   p1.setString(9,maritalstatus);
   p1.setString(10,mobile);
   p1.setString(11,city);
   p1.setString(12,state);
   p1.setString(13,nation);
   p1.setString(14,zipcode);
   p1.setString(15,uname);
   p1.setString(16,yearcomplete);
   p1.setString(17,percentage);
   p1.setString(18,placeob);
   p1.setString(19,dod);
   p1.setString(20,dom);
   p1.setString(21,doy);
   p1.setString(22,dodj);
   p1.setString(23,domj);
   p1.setString(24,doyj);
   p1.setString(25,religion);
   p1.setString(26,designation);
   p1.setString(27,previouscompany);
   p1.setString(28,previousdesignation);
   p1.setString(29,fathername);
   p1.setString(30,mothername);
   p1.setString(31,wifename);
   p1.setString(32,childname1);
   p1.setString(33,childname2);
   p1.setString(34,childname3);
   p1.setString(35,childname4);
   
   
   p1.executeUpdate();
   out.println("<h3 align='center'>Employee Added completed</h3><br><a href='add_employee.jsp'>Click Here</a> to add one more");
	
	 }
	 catch(Exception ab)
	 {
	 out.print(ab);
	 }
	 %>
    </p>
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