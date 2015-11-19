  <%@ page import="java.sql.*,java.io.*" session="true"%>
  
  <%
  	String course=request.getParameter("id");
	
    Statement st=null;
	Statement st1=null;
	Statement st2=null;
	
	ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	
	Connection con=null;
    String email=(String) session.getAttribute("email");
try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   st1=con.createStatement();
   st2=con.createStatement();
   
   rs=st.executeQuery("select * from allocate where employee='"+email+"' and status='complete'");
   int count=0;
   count=rs.getRow();
   while(rs.next()){
   count++;
   }
   rs1=st1.executeQuery("select * from allocate where employee='"+email+"' and status='Incomplete'");
   rs1.next();
   int count1=0;
   count1=rs1.getRow();
   while(rs1.next()){
   count1++;
   }
%>
<table width="101%" border="1" align="center" cellpadding="1" cellspacing="1">
  <tr>
    <td width="95%"><div align="center">
      <h1 align="center">Learning Management System</h1>
    </div></td>
  </tr>
  <tr>
      <td> <div align="center"><a href="employee_index1.jsp">Home</a> |<a href="changepassw.jsp">Change Password</a>| <a href="view_profile.jsp">View Profile</a> | <a href="edit_profile.jsp">Update Profile</a>| <a href="../home.jsp">LogOut</a></div>
      <table width="100%" border="1">
        <tr>
          <td width="19%"><table width="100%" border="1">
              <tr>
                <td width="17%"><table width="90%" height="106" border="1">
                  <tr>
                    <td height="31"><div align="center" style="color:red">Quick Links </div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><a href="completed_training.jsp">Completed Training(<%=count%>)</a></div></td>
                  </tr>
                  <tr>
                    <td><div align="center"><a href="scheduled_training.jsp">Scheduled Training(<%=count1%>)</a></div></td>
                  </tr>
                </table></td>
                <td width="83%">
 
<%
	
  rs2=st2.executeQuery("select * from training2 where choosetrain='"+course+"'");
  %>
<table width="29%" border="1" align="center">
  	<tr>
    <th>Image</th>
    <th>Go For Test</th>
  </tr>
<%
	while(rs2.next()) {
%>
  <tr>
    <td width="49%"><img src="<%=rs2.getString("image")%>" width="200" height="200" alt="<%=rs2.getString("image")%>"/></td>
    <td width="51%"><div align="center"><a href="slide_test_exp.jsp?id=<%=rs2.getString(2)%>&img_id=<%=rs2.getString(1)%>&prev_image=0">Go</a></div></td>
  </tr>
  <%
  }
  %>
</table>
<%
	}
	catch(Exception e){
	out.print(e);
	}
	finally{
	con.close();
	st.close();
	st1.close();
	st2.close();
	rs.close();
	rs1.close();
	//rs2.close();
	}
	%>
</td>
</tr>
</table>