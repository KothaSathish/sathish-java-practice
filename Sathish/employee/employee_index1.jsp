 
  <%@ page import="java.sql.*,java.io.*" session="true"%>
  
  <%
  
    Statement st=null;
	Statement st1=null;
	ResultSet rs1=null;
    Connection con=null;


    String email=(String) session.getAttribute("email");
	//out.print(email);
	
	
try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   st1=con.createStatement();
   ResultSet rs=st.executeQuery("select * from allocate where employee='"+email+"' and status='complete'");
   rs.next();
   int count=0;
   //String s = Integer.toString(count);
  
   count=rs.getRow();
   while(rs.next()){
   count++;
	}
   %>
  
<table width="101%" border="1" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td width="95%"><div align="center">
      <h1 align="center">Learning Management System</h1>
    </div></td>
  </tr>
 
  <tr>
  
    <td> <div align="center"><a href="employee_index.jsp">Home</a> |<a href="changepassw.jsp">Change Password</a>| <a href="view_profile.jsp">View Profile</a> | <a href="edit_profile.jsp">Update Profile</a>| <a href="../home.jsp">LogOut</a></div>
      <table width="100%" border="1">
        <tr>
          <td width="19%"><table width="93%" height="106" border="1">
            <tr>
              <td height="31"><div align="center" style="color:red">Quick Links </div></td>
            </tr>
            <tr>
              <td><div align="center"><a href="completed_training.jsp">Completed Training(<%=count%>)</a></div></td>
            </tr>
			<%
		    rs1=st1.executeQuery("select * from allocate where employee='"+email+"' and status='Incomplete'");
			rs1.next();
			int count1=0;
   			count1=rs1.getRow();
			//out.print(count1);
			
			
			while(rs1.next()){
			count1++;
			}
				
			%>
            <tr>
              <td><div align="center"><a href="scheduled_training.jsp">Scheduled Training(<%=count1%>)</a></div></td>
            </tr>
          </table></td>
          <td width="81%"></p>
           
		   
          <p>&nbsp;</p></td>
        </tr>
      </table>  
	  	<%
	}
	catch(Exception e){
	out.print(e);
	}
	finally{
	
    st.close();
	st1.close();
	con.close();
	}
	%>
	</td>
  </tr>
</table>

