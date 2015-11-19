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
	$(function() {
		$('#slider').slides({
			preload : true,
			preloadImage : 'images/slider/controls/loading.gif',
			play : 5000,
			pause : 2500,
			hoverPause : true
		});
	});
</script>
<!-- / homepage scripts -->
</head>
<body>
	<%@ include file="navigation.jsp"%>
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
					<%@ page import="java.sql.*,java.io.*,java.util.* "%>


					<%
						String abc = request.getParameter("email");
						String def = request.getParameter("password");
						String ghi = "admin";
						String ijk = "employee";

						ResultSet rs = null;
						Connection con = null;
						Statement st = null;
						try {
							//Class.forName("com.mysql.jdbc.Driver").newInstance();
							//con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");

							Class.forName("com.mysql.jdbc.Driver");
							con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
							st = con.createStatement();
							rs = st.executeQuery("select email,password,position from register where email='"+ abc + "' ");
							rs.next();

							String pqr = rs.getString("email");
							session.setAttribute("email", pqr);
							String stu = rs.getString("password");
							String vwx = rs.getString("position");

							if (abc.equals(pqr) && def.equals(stu) && ghi.equals(vwx))
								response.sendRedirect("admin/index.jsp");

							else if (abc.equals(pqr) && def.equals(stu) && ijk.equals(vwx))
								response.sendRedirect("employee/index.jsp");

							else
								response.sendRedirect("login.jsp");
						} catch (Exception ef) {
							out.print(ef);
						} finally {
							rs.close();
							st.close();
							con.close();
						}
					%>

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
				<!-- ########################################################################################## -->
				<!-- /nav -->
				<section>
					<h2>Get In Contact</h2>
					<address>
						Full Name<br> Address Line 1<br> Address Line 2<br>
						Town/City<br> Postcode/Zip<br> <br> Tel: xxxx xxxx
						xxxxxx<br> Email: <a href="#">contact@domain.com</a>
					</address>
				</section>
				<!-- /section -->
				<!-- /section -->
				<!-- ########################################################################################## -->
				<!-- ########################################################################################## -->
				<!-- ########################################################################################## -->
				<!-- ########################################################################################## -->
			</aside>
			<!-- / content body -->
		</div>
	</div>
	<%@ include file="footer.jsp"%>
	<script>
		$(document).ready(function() {
			$("#nl_name, #nl_email").defaultvalue("Name", "Email Address");
		});
	</script>
</body>
</html>