  <%@ page import="java.sql.*,java.io.*" session="true"%>

 <html>
 <head>
 </head>
 
 <body>
 <%
 
 String course=request.getParameter("id");
 String img_id=request.getParameter("img_id");
 String img_path=request.getParameter("img_path");
 String prev_image=request.getParameter("prev_image");
 
    Statement st=null;
	Statement st1=null;
	Statement st2=null;
	
	String s = null;
	String y = null,z=null;
	String sql2=null;
	String sql3=null;
	int ef=1;
	
	String abc=null;

	String ab= null,cd=null;
	
    ResultSet rs=null;
	ResultSet rs1=null;
	ResultSet rs2=null;
	//ResultSet rs3=null;
	Connection con=null;
	
    String email=(String) session.getAttribute("email");
try{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st=con.createStatement();
   st1=con.createStatement();
   st2=con.createStatement();
   
   if(img_path == null)
   {
   	sql2 = "select * from training2  where choosetrain='"+course+"' ";
   }
   else
   {
   	sql2 = "select * from training2  where choosetrain='"+course+"' and id>='"+img_id+"' ";
   }
   
   rs2=st2.executeQuery(sql2);
   rs2.next();
	
	if(img_path == null)
	{
	s=rs2.getString("image");
	}
	else
	{
	s=img_path;
    }
   if(rs2.next())
	{
	 y = rs2.getString("image");
	 z = rs2.getString("id");
	}



	
	
	
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
      </div>
	  </td>
      </tr>
 
      <tr>
      <td> <div align="center"><a href="employee_index1.jsp">Home</a> |<a href="changepassw.jsp">Change Password</a>| <a href="view_profile.jsp">View Profile</a> | <a href=        "edit_profile.jsp">Update Profile</a>| <a href="../home.jsp">LogOut</a></div>
      <table width="100%" border="1">
        <tr>
          <td width="19%"><table width="100%" border="1">
              <tr>
                <td width="18%"><table width="90%" height="106" border="1">
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
                <td width="82%">
	 
<form NAME="form1" align="center">
<table width="100%" border="1">
  <tr>
    <td align="center"><h1>Images</h1></td>
  </tr>
  <tr>
    <td align="center"><img src=<%=s %> width="500" height="600" ></td>
  </tr>
  <tr>
    <td align="center">
	
	
	
    <%
	if(prev_image.equals("1"))
	{
	%>
	<A HREF="javascript:history.go(-1)" id="h1">Previous</A>
	
	 <%
	 }
	%>
	
	
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
  
   <%
	if(y==abc)
	{
	%>
	<a href="test.jsp" onClick="finish_image();"  id="h3">Finish</a>
	<%
	}
	%>
	
	<%
	if(y!=abc)	
	{
	%>
	<a href="slide_test_exp.jsp?id=<%=course%>&img_path=<%=y %>&img_id=<%=z %>&prev_image=<%=ef%>" onClick="next_image();" id="h2" name="h2" >Next Slide</a>
    <%
	}
	%>
  </tr>
</table>


</form>
</center></td>
  </tr>

  </table>
  </tr>
  </table>
<%
	}
	catch(Exception e){
	out.print(e);
	}
	finally
	{
	con.close();
	st.close();
	st1.close();
	st2.close();
	//rs.close();
	//rs1.close();
	// rs2.close();
	}
	%>
</td>
</tr>
</table>
</body>
</html>