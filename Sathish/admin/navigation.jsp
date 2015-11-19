<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<div class="wrapper row1">
  <header id="header" class="clear">
    <div id="hgroup">
      <h1><a href="#">Employee<span> Online Learning & Tracking</span></a></h1>
      <h2>Carporate Training</h2>
    </div>
    <form action="#" method="post">
      <fieldset>
       <!--  <legend>Search:</legend> -->
       <!--  <input type="text" value="Search Our Website&hellip;" onFocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;">
        <input type="image" src="../images/search.gif" id="search" alt="Search">
         -->
      </fieldset>
    </form>
    <nav>
      <ul class="clear">
        <li class="first"><a href="index.jsp">Home</a></li>
        <li><a href="#">My Account</a>
          <ul>
            <li><a href="view_profile.jsp">View Profile</a></li>
            <li><a href="update_profile.jsp">Update Profile</a></li>
            <li><a href="change_psw.jsp">Change Password</a></li>
          </ul>
        </li>
        
        <li><a href="#">Employee Settings</a>
          <ul>
            <li><a href="add_employee.jsp">Add Employee</a></li>
            <li><a href="view_all_employee.jsp">View All Employee</a></li>
            <li><a href="delete_employee.jsp">Delete Employee</a></li>
            
          </ul>
        </li>
        
        <li><a href="#">Training</a>
          <ul>
            <li><a href="add_training.jsp">Add Training</a></li>
            <li><a href="add_images.jsp">Add ImagesTo Training</a></li>
            <li><a href="allocate_training.jsp">Allocate Training</a></li>
            <li><a href="track_training.jsp">Track Training</a></li>
          </ul>
        </li>
        <li><a href="../login.jsp">Logout</a></li>
      </ul>
      
      
    </nav>
  </header>
</div>
