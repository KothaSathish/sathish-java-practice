 
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
  
    <td> <div align="center"><a href="employee_index1.jsp">Home</a> |<a href="changepassw.jsp">Change Password</a>| <a href="view_profile.jsp">View Profile</a> | <a href="edit_profile.jsp">Update Profile</a>| <a href="../home.jsp">LogOut</a></div>
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
		  
		  		  		  <%
	
	String s1=request.getParameter("fname");
	String s2=request.getParameter("lname");
	String s=(String) session.getAttribute("email");
	
	String s3=request.getParameter("preaddress");
	String s4=request.getParameter("peraddress");

	String s5=request.getParameter("maritalstatus");
	String s6=request.getParameter("mobile");
	String s7=request.getParameter("city");
	String s8=request.getParameter("state");
	String s9=request.getParameter("nation");
	String s10=request.getParameter("zipcode");
	String s11=request.getParameter("uname");
	String s12=request.getParameter("yearcomplete");
	String s13=request.getParameter("percentage");
	String s14=request.getParameter("placeob");
	//String s15=request.getParameter("dod");
	//String s16=request.getParameter("dom");
	//String s17=request.getParameter("doy");
	//String s18=request.getParameter("dodj");
	//String s19=request.getParameter("domj");
	//String s20=request.getParameter("doyj");
	String s21=request.getParameter("religion");
	String s22=request.getParameter("designation");
	String s23=request.getParameter("previouscompany");
	String s24=request.getParameter("previousdesignation");
	
	
	
try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con2=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   Statement st2=con.createStatement();
   st2.executeUpdate("update register set fname='"+s1+"',lname='"+s2+"',email='"+s+"',preaddress='"+s3+"',peraddress='"+s4+"',maritalstatus='"+s5+"',mobile='"+s6+"',city='"+s7+"',state='"+s8+"',nation='"+s9+"',zipcode='"+s10+"',uname='"+s11+"',yearcomplete='"+s12+"',percentage='"+s13+"',placeob='"+s14+"',religion='"+s21+"',designation='"+s22+"',previouscompany='"+s23+"',previousdesignation='"+s24+"'  where email='"+s+"' ");
   out.println("<h4 style=color:red;text-align:center>update successfully</h4>");
   }
   catch(Exception ef)
   {
   out.println(ef);
   }
   
%>
		  
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