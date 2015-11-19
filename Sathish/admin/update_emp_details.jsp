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
 
  //String email=(String) session.getAttribute("email");
  	Statement st=null;
	ResultSet rs=null;
    Connection con=null;
	
	String s=request.getParameter("email");
	session.setAttribute("s1",s);
	
try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   rs=st.executeQuery("select * from register where email='"+s+"' ");
   while(rs.next())
  {
  %>
    <form action="update_emp_details_action.jsp" method="post">
      <TABLE align="center" border="2">
        <tr>
          <td>FName</td>
          <td><input type="text" name="fname" size="30" value="<%=rs.getString("fname")%>"/></td>
        </tr>
        <tr>
          <td>LName</td>
          <td><input type="text" name="lname" size="30" value="<%=rs.getString("lname")%>"/></td>
        </tr>
        <TR>
          <TD>Email</TD>
          <TD><input type="text" name="email" size="30" value="<%=rs.getString("email")%>" readonly/></TD>
        </TR>
        <TR>
          <TD>present Address</TD>
          <td><textarea name="preaddress" id="preaddress"><%=rs.getString("preaddress")%></textarea></td>
        </TR>
        <TR>
          <TD>Permenent Address</TD>
          <td><textarea name="peraddress"><%=rs.getString("peraddress")%></textarea></td>
        </TR>
        <TR>
          <TD>Marital Status</TD>
          <td><select id="maritalstatus" name="maritalstatus">
            <option value="<%=rs.getString("maritalstatus")%>" selected="selected"><%=rs.getString("maritalstatus")%></option>
            <option value="Single">Single</option>
            <option value="Married">Married</option>
            <option value="Divorced">Divorced</option>
          </select></td>
        <TR>
          <TD>Mobile No</TD>
          <TD><input type="text" name="mobile" size="30" value="<%=rs.getString("mobile")%>" /></TD>
        </TR>
        <TR>
          <TD>City</TD>
          <TD><input type="text" name="city" size="30" value="<%=rs.getString("city")%>" /></TD>
        </TR>
        <TR>
          <TD>State</TD>
          <TD><input type="text" name="state" size="30" value="<%=rs.getString("state")%>" /></TD>
        </TR>
        <TR>
          <TD>Nation</TD>
          <TD><input type="text" name="nation" size="30" value="<%=rs.getString("nation")%>" /></TD>
        </TR>
        <TR>
          <TD>Zip Code</TD>
          <TD><input type="text" name="zipcode" size="30" value="<%=rs.getString("zipcode")%>" /></TD>
        </TR>
        <TR>
          <TD>University Name</TD>
          <TD><input type="text" name="uname" size="30" value="<%=rs.getString("uname")%>" /></TD>
        </TR>
        <TR>
          <TD>Year Of Complete</TD>
          <TD><input type="text" name="yearcomplete" size="30" value="<%=rs.getString("yearcomplete")%>" /></TD>
        </TR>
        <TR>
          <TD>Percentage</TD>
          <TD><input type="text" name="percentage" size="30" value="<%=rs.getString("percentage")%>" /></TD>
        </TR>
        <TR>
          <TD>Place Of Birth</TD>
          <TD><input type="text" name="placeob" size="30" value="<%=rs.getString("placeob")%>" /></TD>
        </TR>
        <tr>
          <td>Date of Birth</td>
          <td><select name="dod">
            <option value="<%=rs.getString("dod")%>"  selected="selected"><%=rs.getString("dod")%></option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
          </select>
            <select name="dom">
              <option value="<%=rs.getString("dom")%>" selected="selected"><%=rs.getString("dom")%></option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
            </select>
            <select name="doy">
              <option value="<%=rs.getString("doy")%>" selected="selected"><%=rs.getString("doy")%></option>
              <option value="1980">1980</option>
              <option value="1981">1981</option>
              <option value="1982">1982</option>
              <option value="1983">1983</option>
              <option value="1984">1984</option>
              <option value="1985">1985</option>
              <option value="1986">1986</option>
              <option value="1987">1987</option>
              <option value="1988">1988</option>
              <option value="1989">1989</option>
              <option value="1990">1990</option>
              <option value="1991">1991</option>
              <option value="1992">1992</option>
              <option value="1993">1993</option>
              <option value="1994">1994</option>
            </select></td>
        </TR>
        <TR>
          <td>Date of Joining</td>
          <td><select name="dodj">
            <option value="<%=rs.getString("dodj")%>" selected="selected"><%=rs.getString("dodj")%></option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
            <option value="7">7</option>
            <option value="8">8</option>
            <option value="9">9</option>
            <option value="10">10</option>
            <option value="11">11</option>
            <option value="12">12</option>
            <option value="13">13</option>
            <option value="14">14</option>
            <option value="15">15</option>
            <option value="16">16</option>
            <option value="17">17</option>
            <option value="18">18</option>
            <option value="19">19</option>
            <option value="20">20</option>
            <option value="21">21</option>
            <option value="22">22</option>
            <option value="23">23</option>
            <option value="24">24</option>
            <option value="25">25</option>
            <option value="26">26</option>
            <option value="27">27</option>
            <option value="28">28</option>
            <option value="29">29</option>
            <option value="30">30</option>
            <option value="31">31</option>
          </select>
            <select name="domj">
              <option value="<%=rs.getString("domj")%>" selected="selected"><%=rs.getString("domj")%></option>
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
              <option value="10">10</option>
              <option value="11">11</option>
              <option value="12">12</option>
            </select>
            <select name="doyj">
              <option value="<%=rs.getString("doyj")%>" selected="selected"><%=rs.getString("doyj")%></option>
              <option value="1980">1980</option>
              <option value="1981">1981</option>
              <option value="1982">1982</option>
              <option value="1983">1983</option>
              <option value="1984">1984</option>
              <option value="1985">1985</option>
              <option value="1986">1986</option>
              <option value="1987">1987</option>
              <option value="1988">1988</option>
              <option value="1989">1989</option>
              <option value="1990">1990</option>
              <option value="1991">1991</option>
              <option value="1992">1992</option>
              <option value="1993">1993</option>
              <option value="1994">1994</option>
            </select></td>
        </TR>
        <tr>
          <td>Religion</td>
          <TD><input type="text" name="religion" size="30" value="<%=rs.getString("religion")%>"/></TD>
        </tr>
        <tr>
          <td>Designation</td>
          <TD><input type="text" name="designation" size="30" value="<%=rs.getString("designation")%>"/></TD>
        </tr>
        <tr>
          <td>Previous Company</td>
          <TD><input type="text" name="previouscompany" size="30" value="<%=rs.getString("previouscompany")%>"/></TD>
        </tr>
        <tr>
          <td>Previous Designation</td>
          <TD><input type="text" name="previousdesignation" size="30" value="<%=rs.getString("previousdesignation")%>"/></TD>
        </tr>
        <tr>
          <td>Father Name</td>
          <TD><input type="text" name="fathername" size="30" value="<%=rs.getString("fathername")%>"/></TD>
        </tr>
        <tr>
          <td>Mother Name</td>
          <TD><input type="text" name="mothername" size="30" value="<%=rs.getString("mothername")%>"/></TD>
        </tr>
        <tr>
          <td>Wife Name</td>
          <TD><input type="text" name="wifename" size="30" value="<%=rs.getString("wifename")%>"/></TD>
        </tr>
        <tr>
          <td>Child1 Name</td>
          <TD><input type="text" name="childname1" size="30" value="<%=rs.getString("childname1")%>"/></TD>
        </tr>
        <tr>
          <td>Child2 Name</td>
          <TD><input type="text" name="childname2" size="30" value="<%=rs.getString("childname2")%>"/></TD>
        </tr>
        <tr>
          <td>Child3 Name</td>
          <TD><input type="text" name="childname3" size="30" value="<%=rs.getString("childname3")%>"/></TD>
        </tr>
        <tr>
          <td>Child4 Name</td>
          <TD><input type="text" name="childname4" size="30" value="<%=rs.getString("childname4")%>"/></TD>
        </tr>
        <tr>
          <td colspan="2" align="center"><input type="submit" name="Submit" value="Update" />
            <input type="reset" value="Reset" /></td>
        </tr>
      </table>
    </form>
    <%
	}
	%>
    <%

	rs.close();
    st.close();
	con.close();
	
	}
	catch(Exception ex){
	out.print(ex);
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