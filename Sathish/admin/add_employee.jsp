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
    <form name="form1" method="post" action="add_employee_action.jsp">
      <table width="100%" border="0">
        <tr>
          <th scope="col">&nbsp;</th>
          <th colspan="2" scope="col"><h1>Add Employee  information</h1></th>
          <th width="29%" scope="col">&nbsp;</th>
        </tr>
        <tr>
          <th colspan="2" scope="col">Personal Details</th>
          <th colspan="2" scope="col">Education Details</th>
        </tr>
        <tr>
          <td width="28%" align="right">Full Name </td>
          <td width="22%"><input type="text" name="fname" /></td>
          <td width="21%" align="right">University Name </td>
          <td><input type="text" name="uname" /></td>
        </tr>
        <tr>
          <td align="right">Last Name </td>
          <td><input type="text" name="lname" /></td>
          <td align="right">Year Of Compleation </td>
          <td><input type="text" name="yearcomplete" /></td>
        </tr>
        <tr>
          <td align="right">Employee Id </td>
          <td><input type="text" name="email" /></td>
          <td align="right">Percentage</td>
          <td><input type="text" name="percentage" /></td>
        </tr>
        <tr>
          <td align="right">Password</td>
          <td><input type="password" name="password" /></td>
          <td align="right">Place Of Birth </td>
          <td><input type="text" name="placeob" /></td>
        </tr>
        <tr>
          <td align="right">Confirm Password </td>
          <td><input type="password" name="cpassword" /></td>
          <td align="right">Date Of Birth </td>
          <td><select name="dod">
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
              <option value="1">January</option>
              <option value="2">February</option>
              <option value="3">March</option>
              <option value="4">April</option>
              <option value="5">May</option>
              <option value="6">June</option>
              <option value="7">July</option>
              <option value="8">August</option>
              <option value="9">September</option>
              <option value="10">October</option>
              <option value="11">November</option>
              <option value="12">December</option>
            </select>
            <select name="doy">
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
        </tr>
        <tr>
          <td align="right">Present Address </td>
          <td><textarea name="preaddress"></textarea></td>
          <td align="right">Date Of Joining </td>
          <td><select name="dodj">
            <option value="Select">Select</option>
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
              <option value="Select">Select</option>
              <option value="1">January</option>
              <option value="2">February</option>
              <option value="3">March</option>
              <option value="4">April</option>
              <option value="5">May</option>
              <option value="6">June</option>
              <option value="7">July</option>
              <option value="8">August</option>
              <option value="9">September</option>
              <option value="10">October</option>
              <option value="11">November</option>
              <option value="12">December</option>
            </select>
            <select name="doyj">
              <option value="Select">Select</option>
              <option value="2000">2000</option>
              <option value="2001">2001</option>
              <option value="2002">2002</option>
              <option value="2003">2003</option>
              <option value="2004">2004</option>
              <option value="2005">2005</option>
              <option value="2006">2006</option>
              <option value="2007">2007</option>
              <option value="2008">2008</option>
              <option value="2009">2009</option>
              <option value="2010">2010</option>
              <option value="2011">2011</option>
              <option value="2012">2012</option>
            </select></td>
        </tr>
        <tr>
          <td align="right">Permanent Address </td>
          <td><textarea name="peraddress"></textarea></td>
          <td align="right">Religion</td>
          <td><input type="text" name="religion" /></td>
        </tr>
        <tr>
          <td align="right">Gender</td>
          <td><input name="gender" type="radio" value="Male" />
            Male
            <input name="gender" type="radio" value="Female" />
            Female </td>
          <td align="right">Designation</td>
          <td><select name="designation">
            <option>Select</option>
            <option>Team Member</option>
            <option>Team Leader</option>
            <option>Manager</option>
          </select></td>
        </tr>
        <tr>
          <td align="right">Marital Status </td>
          <td><select id="maritalstatus" name="maritalstatus" onChange="st();">
            <option selected="selected">Select</option>
            <option value="Single">Single</option>
            <option value="Married">Married</option>
            <option value="Divorced">Divorced</option>
          </select></td>
          <td align="right">Previous Company </td>
          <td><input type="text" name="previouscompany" /></td>
        </tr>
        <tr>
          <td align="right">Mobile No </td>
          <td><input type="text" name="mobile" /></td>
          <td align="right">Privious Designation </td>
          <td><input type="text" name="previousdesignation" /></td>
        </tr>
        <tr>
          <td align="right">City</td>
          <td><select name="city" size="1">
            <option>Select</option>
            <option>Hyderabad</option>
            <option>Bengalore</option>
            <option>Chennai</option>
            <option>Pune</option>
          </select></td>
          <td colspan="2" align="center"><strong>Family Details</strong></td>
        </tr>
        <tr>
          <td align="right">State</td>
          <td><select name="state">
            <option>Select</option>
            <option>Telangana</option>
            <option>Andhra Pradesh</option>
            <option>Karnataka</option>
            <option>Maharastra</option>
          </select></td>
          <td align="right">Father Name</td>
          <td><input type="text" name="fathername" /></td>
        </tr>
        <tr>
          <td align="right">Nationality</td>
          <td><select name="nation">
            <option value="Select">Select</option>
            <option>India</option>
            <option>USA</option>
            <option>UK</option>
            <option>Select</option>
          </select></td>
          <td align="right">Mother Name</td>
          <td><input type="text" name="mothername" /></td>
        </tr>
        <tr>
          <td align="right">Zip Code </td>
          <td><input type="text" name="zipcode" /></td>
          <td align="right">Wife Name: </td>
          <td><input type="text" name="wifename" id="h"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td align="right">Child Name1</td>
          <td><input type="text" name="childname1" id="h2" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td  align="right">Child Name2:</td>
          <td><input type="text" name="childname2" id="h3" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td align="right">Child Name3:</td>
          <td><input type="text" name="childname3" id="h4" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td align="right">Child Name4:</td>
          <td><input type="text" name="childname4" id="h9" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="Submit" value="Register" /></td>
          <td>&nbsp;</td>
          <td><input type="reset" name="Submit2" value="Reset" /></td>
        </tr>
      </table>
    </form>
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