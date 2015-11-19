  <%@ page import="java.sql.*,java.io.*,java.util.*"%>
  
<table width="101%" border="1" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td width="95%"><div align="center">
      <h1 align="center">Learning Management System</h1>
    </div></td>
  </tr>
 
  <tr>
  
    <td><h4 style=text-align:center><a href="admin_index1.jsp">Home</a> |<a href="changepassw.jsp">Change Password</a>| <a href="view_profile.jsp">View Profile</a> | <a href="edit_profile.jsp">Update Profile</a>| <a href="../home.jsp">LogOut</a></h4>
      <table width="103%" border="1">
        <tr>
          <td width="25%"><table width="70%" border="1" align="center">
            <tr>
              <td><div align="center" style="color:red">Quick Links</div></td>
            </tr>
            <tr>
              <td><div align="center"><a href="create_employee.jsp">Create Employee</div></a></td>
            </tr>
            <tr>
              <td><div align="center"><a href="modify_employee.jsp">Modify Employee</div></a></td>
            </tr>
            <tr>
              <td><div align="center"><a href="delete_employee.jsp">Delete Employee</div></a></td>
            </tr>
            <tr>
              <td><div align="center"><a href="view_employee.jsp">View All Employee</div></a></td>
            </tr>
          </table>
            <p>&nbsp;</p>
            <table width="74%" border="1" align="center">
              <tr>
                <td><div align="center" style="color:red">Trainings</div></td>
              </tr>
              <tr>
                <td><div align="center"><a href="add_traing.jsp">Add  Trainings</div></a></td>
              </tr>
              <tr>
                <td><div align="center"><a href="add_image.jsp">Add  Images To Above Training</div></a></td>
              </tr>
              <tr>
                <td><div align="center"><a href="allocate_training.jsp">Allocate Training to Employees</div></a></td>
              </tr>
            </table>
          <p>&nbsp;</p></td>
          <td width="75%">
		  
		  
		  <%
		    String tname=request.getParameter("choosetrain");
			 String image=request.getParameter("image");
			
			
     try
   {
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   Statement st=con.createStatement();
  
  
   {
		st.executeUpdate("insert into training2(id,choosetrain,image) values(image_seq.nextval,'"+tname+"','"+image+"') ");
   }
   out.println("<h3 align='center'>Training Submitted Successfully…..</h3>");
   }
   catch(Exception ab)
	 {
	 out.print(ab);
	 }
	
             
			  %>
  
	 </td>
        </tr>
      </table>
      <p style=text-align:center>&nbsp;</p>
      <p style=text-align:center>&nbsp;</p>
      <p style=text-align:center>&nbsp;</p>
      <p style=text-align:center>&nbsp;</p></td>
	</tr>
	</table>