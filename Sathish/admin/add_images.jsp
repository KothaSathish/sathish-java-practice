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
    <h1>Add Images To Training</h1>
    <form action="add_images_action.jsp" method="post" enctype="multipart/form-data" name="form1">
      <table width="39%" border="0" align="center">
        <tr>
          <td width="50%">Choose Training: </td>
          <td width="50%"><label>
            <select name="addtrain" id="addtrain">
              <option value="0" selected="selected">Select Training</option>
                <%

	ResultSet rs=null;
	Statement statement=null;
	Connection con=null;
try{

   Class.forName("com.mysql.jdbc.Driver").newInstance();
   con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   statement=con.createStatement();
 
	  rs=statement.executeQuery("select * from training order by id DESC");
	  while(rs.next()){
	  String train=rs.getString("addtrain");
	  session.setAttribute("train",train);
	  %>
              <option value="<%=rs.getString("id")%>"><%=rs.getString("addtrain")%></option>
              <%
		}
		%>
            </select>
          </label></td>
        </tr>
        <tr>
          <td>Add Image: </td>
          <td><label>
            <input name="image" type="file" id="image" />
          </label></td>
        </tr>
        <tr>
          <td colspan="2"><div align="center">
            <label>
              <input type="submit" name="Submit" value="Add" />
            </label>
          </div></td>
        </tr>
      </table>
    </form>
    <%
			statement.close();
			rs.close();
			con.close();
			}

 			catch (Exception ex) {

			}
%>

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