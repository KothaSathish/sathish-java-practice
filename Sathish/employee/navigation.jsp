<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.*,java.io.*" session="true"%>
  
  <%
  
    Statement ST=null;
	Statement ST1=null;
	ResultSet RS1=null;
    Connection CON=null;
    int CT=0,CT1=0;


    String EMAIL=(String) session.getAttribute("email");
	//out.print(email);
	
	
try{
    Class.forName("com.mysql.jdbc.Driver");
   CON=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
  
   
   ST=CON.createStatement();
   ST1=CON.createStatement();
   ResultSet RS=ST.executeQuery("select * from allocate where employee='"+EMAIL+"' and status='complete'");
   int COUNT=0;
   while(RS.next())
   	CT
   	++;
	
	RS1=ST1.executeQuery("select * from allocate where employee='"+EMAIL+"' and status='Incomplete'");
	int COUNT1=0;
   	while(RS1.next())
		CT1++;
	}
catch(Exception ex)
{
	out.print(ex);
}
   %>
<div class="wrapper row1">
  <header id="header" class="clear">
    <div id="hgroup">
      <h1><a href="#">Employee<span> Online Learning & Tracking</span></a></h1>
      <h2>Carporate Training</h2>
    </div>
    <form action="#" method="post">
     <!--
      <fieldset>
        <legend>Search:</legend>
          <input type="text" value="Search Our Website&hellip;" onFocus="this.value=(this.value=='Search Our Website&hellip;')? '' : this.value ;">
        <input type="image" src="../images/search.gif" id="search" alt="Search">
      </fieldset>
      -->
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
        <li><a href="#">Trainings</a>
          <ul>
            <li><a href="scheduled_training.jsp">Scheduled Trainings(<%=CT1 %>)</a></li>
            <li><a href="completed_training.jsp">Completed Trainings(<%=CT %>)</a></li>
          </ul>
        </li>
        <li><a href="../login.jsp">Logout</a></li>
      </ul>
      
      
    </nav>
  </header>
</div>
