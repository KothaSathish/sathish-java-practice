<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>Competitive</title>
<meta charset="iso-8859-1">
<link rel="stylesheet" href="styles/layout.css" type="text/css">
<script src="scripts/jquery-1.8.2.min.js"></script>
<script src="scripts/jquery-defaultvalue.js"></script>
<script src="scripts/jquery-browsercheck.js"></script>
<!--[if lt IE 9]>
<link rel="stylesheet" href="styles/ie.css" type="text/css">
<script src="scripts/ie/html5shiv.min.js"></script>
<![endif]-->
<!-- homepage scripts -->
<script src="scripts/jquery-slides.min.js"></script>
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
    <div id="content">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <section id="comments">
        <h2>Login Here</h2>
        <form action="login_action.jsp" method="post">
          <p>
            <input type="text" name="email" />
            <label for="name"><small>Name (required)</small></label>
          </p>
          <p>
            <input type="password" name="password" />
            <label for="email"><small>Password (required)</small></label>
          </p>
          <p>
            <input name="submit" type="submit" id="submit" value="Login">
          &nbsp;</p>
        </form>
      </section>
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
    </div>
    <!-- right column -->
    <aside id="right_column">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## --><!-- /nav -->
      <section>
        <h2>Get In Contact</h2>
        <address>
          Full Name<br>
          Address Line 1<br>
          Address Line 2<br>
          Town/City<br>
          Postcode/Zip<br>
          <br>
          Tel: xxxx xxxx xxxxxx<br>
          Email: <a href="#">contact@domain.com</a>
        </address>
      </section>
      <!-- /section --><!-- /section -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
    </aside>
    <!-- / content body -->
  </div>
</div>
<%@ include file="footer.jsp" %>
<script>
$(document).ready(function () {
    $("#nl_name, #nl_email").defaultvalue("Name", "Email Address");
});
</script>
</body>
</html>