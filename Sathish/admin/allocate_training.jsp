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
    <h1>Add Training  information</h1>
    <form name="form1" method="post" action="allocate_training_action.jsp">
      <table width="35%" border="0" align="center">
        <tr>
          <td width="41%" align="right">Choose Topic Name</td>
          <td width="59%"><select name="tname">
              <option value="0" selected="selected">Select</option>
              <%
			  ResultSet rs=null;
	Statement statement1=null;
	Connection con=null;
try{

   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
  statement1=con.createStatement();
  
					 rs=statement1.executeQuery("select * from training order by id DESC");
					while(rs.next()){
					 %>
              <option value="<%=rs.getString("id")%>"><%=rs.getString("addtrain")%></option>
              <%
					  }
					  %>
              <%

statement1.close();
rs.close();
con.close();
}

 catch (Exception ex) {

}
%>
            </select>          </td>
        </tr>
        <tr>
          <td align="right">Choose Employees</td>
          <td><input type="text" name="employee" />          </td>
        </tr>
        <tr>
          <td colspan="2" align="center" valign="middle"><input type="submit" name="Submit" value="Submit" />          </td>
        </tr>
      </table>
    </form>
    <p>&nbsp;</p>
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