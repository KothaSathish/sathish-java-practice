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
    <form name="form1" method="post" action="add_training_action.jsp">
      <table width="28%" border="0" align="center">
        <tr>
          <td><div align="right">Add Training:</div></td>
          <td><input type="text" name="addtrain" /></td>
        </tr>
        <tr>
          <td align="right" valign="top">Description:</td>
          <td><textarea name="description" cols="70" rows="4"></textarea></td>
        </tr>
        <tr>
          <td colspan="2"><div align="center">
            <input type="submit" name="Submit" value="Submit" />
          </div></td>
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