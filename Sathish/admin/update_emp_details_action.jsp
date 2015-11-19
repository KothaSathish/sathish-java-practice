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
    <h1>Update Employee  information</h1>
    <%
	String abc=(String) session.getAttribute("s1");
	out.print(abc);
	String s1=request.getParameter("fname");
	String s2=request.getParameter("lname");
	
	String s3=request.getParameter("preaddress");
	String s4=request.getParameter("peraddress");
	String s5=request.getParameter("maritalstatus");
	String s6=request.getParameter("mobile");
	String s7=request.getParameter("city");
	String s8=request.getParameter("state");
	String s9=request.getParameter("nation");
	String s10=request.getParameter("zipcode");
	String s11=request.getParameter("uname");
	String s12=request.getParameter("yearcomplete");
	String s13=request.getParameter("percentage");
	String s14=request.getParameter("placeob");
	String s15=request.getParameter("dod");
	String s16=request.getParameter("dom");
	String s17=request.getParameter("doy");
	String s18=request.getParameter("dodj");
	String s19=request.getParameter("domj");
	String s20=request.getParameter("doyj");
	String s21=request.getParameter("religion");
	String s22=request.getParameter("designation");
	String s23=request.getParameter("previouscompany");
	String s24=request.getParameter("previousdesignation");
	String s25=request.getParameter("fathername");
	String s26=request.getParameter("mothername");
	String s27=request.getParameter("wifename");
	String s28=request.getParameter("childname1");
	String s29=request.getParameter("childname2");
	String s30=request.getParameter("childname3");
	String s31=request.getParameter("childname4");
	
	
	
try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   Statement st=con.createStatement();
   st.executeUpdate("update register set fname='"+s1+"',lname='"+s2+"',preaddress='"+s3+"',peraddress='"+s4+"',maritalstatus='"+s5+"',mobile='"+s6+"',city='"+s7+"',state='"+s8+"',nation='"+s9+"',zipcode='"+s10+"',uname='"+s11+"',yearcomplete='"+s12+"',percentage='"+s13+"',placeob='"+s14+"',dod='"+s15+"',dom='"+s16+"',doy='"+s17+"',dodj='"+s18+"',domj='"+s19+"',doyj='"+s20+"',religion='"+s21+"',designation='"+s22+"',previouscompany='"+s23+"',previousdesignation='"+s24+"',fathername='"+s25+"',mothername='"+s26+"',wifename='"+s27+"',childname1='"+s28+"',childname2='"+s29+"',childname3='"+s30+"',childname4='"+s31+"'  where email='"+abc+"'  ");
   out.println("<h4 style=color:red;text-align:center>update successfully</h4>");
   }
   catch(Exception ef)
   {
   out.println(ef);
   }
   
%>
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