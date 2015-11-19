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
    <div id="homepage">
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!--  
      <section id="services">
        <ul class="clear">
          <li class="one_quarter first"><img src="../images/demo/32x32.gif" width="32" height="32" alt="">
            <article>
              <h2><a href="#">Lorum ipsum dolor</a></h2>
              <p>Inteligula congue id elis donec sce sagittis intes id laoreet aenean. Massa wisicondisse leo sem ac.</p>
            </article>
          </li>
          <li class="one_quarter"><img src="../images/demo/32x32.gif" width="32" height="32" alt="">
            <article>
              <h2><a href="#">Lorum ipsum dolor</a></h2>
              <p>Inteligula congue id elis donec sce sagittis intes id laoreet aenean. Massa wisicondisse leo sem ac.</p>
            </article>
          </li>
          <li class="one_quarter"><img src="../images/demo/32x32.gif" width="32" height="32" alt="">
            <article>
              <h2><a href="#">Lorum ipsum dolor</a></h2>
              <p>Inteligula congue id elis donec sce sagittis intes id laoreet aenean. Massa wisicondisse leo sem ac.</p>
            </article>
          </li>
          <li class="one_quarter"><img src="../images/demo/32x32.gif" width="32" height="32" alt="">
            <article>
              <h2><a href="#">Lorum ipsum dolor</a></h2>
              <p>Inteligula congue id elis donec sce sagittis intes id laoreet aenean. Massa wisicondisse leo sem ac.</p>
            </article>
          </li>
        </ul>
      </section>
      --> 
      <!-- / Services -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      
     <!--  <section id="shout">
        <p><strong>&ldquo; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc non diam erat. In fringilla massa ut nisi ullamcorper pellentesque &bdquo;</strong></p>
      </section> -->
      <!-- / Shout -->
      <!-- ########################################################################################## -->
      <!-- ########################################################################################## -->
      <!-- Latest --><!-- / Latest -->
    </div>
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