 
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
      <td><div align="center"><a href="employee_index1.jsp">Home</a> |<a href="changepassw.jsp">Change Password</a>| <a href="view_profile.jsp">View Profile</a> | <a href="edit_profile.jsp">Update Profile</a>| <a href="../home.jsp">LogOut</a></div>
          <table width="100%" border="1">
            <tr>
              <td width="19%" valign="top"><table width="93%" height="106" border="1">
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
              <td width="81%"><p></p>
                  <%
 
    //String email=(String)session.getAttribute("email");
  	Statement st2=null;
	ResultSet rs2=null;
    Connection con2=null;
	
	
	
try{
   Class.forName("com.mysql.jdbc.Driver");
   con2=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
   st2=con2.createStatement();
   rs2=st2.executeQuery("select * from register where email='"+email+"' ");
  while(rs2.next())
  {
  %>
                  <table align="center" border="2">
                    <form action="update.jsp" method="post">
                      <tr>
                        <td>FName</td>
                        <td><input type="text" name="fname" size="30" value="<%=rs2.getString("fname")%>"/></td>
                      </tr>
                    </form>
                    <td>LName</td>
                        <td><input type="text" name="lname" size="30" value="<%=rs2.getString("lname")%>"/></td>
                    </tr>
                    <tr>
                      <td>Email</td>
                      <td><input type="text" name="email" size="30" value="<%=rs2.getString("email")%>" /></td>
                    </tr>
                    <tr>
                      <td>present Address</td>
                      <td><input type="text" name="preaddress" size="30" value="<%=rs2.getString("preaddress")%>" /></td>
                    </tr>
                    <tr>
                      <td>Permenent Address</td>
                      <td><input type="text" name="peraddress" size="30" value="<%=rs2.getString("peraddress")%>" /></td>
                    </tr>
                    <tr>
                      <td>Gender</td>
                      <td><input type="text" name="gender" size="30" value="<%=rs2.getString("gender")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Marital Status</td>
                      <td><input type="text" name="maritalstatus" size="30" value="<%=rs2.getString("maritalstatus")%>" /></td>
                    </tr>
                    <tr>
                      <td>Mobile No</td>
                      <td><input type="text" name="mobile" size="30" value="<%=rs2.getString("mobile")%>" /></td>
                    </tr>
                    <tr>
                      <td>City</td>
                      <td><input type="text" name="city" size="30" value="<%=rs2.getString("city")%>" /></td>
                    </tr>
                    <tr>
                      <td>State</td>
                      <td><input type="text" name="state" size="30" value="<%=rs2.getString("state")%>" /></td>
                    </tr>
                    <tr>
                      <td>Nation</td>
                      <td><input type="text" name="nation" size="30" value="<%=rs2.getString("nation")%>" /></td>
                    </tr>
                    <tr>
                      <td>Zip Code</td>
                      <td><input type="text" name="zipcode" size="30" value="<%=rs2.getString("zipcode")%>" /></td>
                    </tr>
                    <tr>
                      <td>University Name</td>
                      <td><input type="text" name="uname" size="30" value="<%=rs2.getString("uname")%>" /></td>
                    </tr>
                    <tr>
                      <td>Year Of Complete</td>
                      <td><input type="text" name="yearcomplete" size="30" value="<%=rs2.getString("yearcomplete")%>" /></td>
                    </tr>
                    <tr>
                      <td>Percentage</td>
                      <td><input type="text" name="percentage" size="30" value="<%=rs2.getString("percentage")%>" /></td>
                    </tr>
                    <tr>
                      <td>Place Of Birth</td>
                      <td><input type="text" name="placeob" size="30" value="<%=rs2.getString("placeob")%>" /></td>
                    </tr>
                    <tr>
                      <td>Date Of Birth</td>
                      <td><input type="text" name="dod" size="30" value="<%=rs2.getString("dod")%>-<%=rs2.getString("dom")%>-<%=rs2.getString("doy")%>" readonly="ReadOnly()" /></td>
                    </tr>
                    <tr>
                      <td>Date Of Joining</td>
                      <td><input type="text" name="dodj" size="30" value="<%=rs2.getString("dodj")%>-<%=rs2.getString("domj")%>-<%=rs2.getString("doyj")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Religion</td>
                      <td><input type="text" name="religion" size="30" value="<%=rs2.getString("religion")%>"/></td>
                    </tr>
                    <tr>
                      <td>Designation</td>
                      <td><input type="text" name="designation" size="30" value="<%=rs2.getString("designation")%>"/></td>
                    </tr>
                    <tr>
                      <td>Previous Company</td>
                      <td><input type="text" name="previouscompany" size="30" value="<%=rs2.getString("previouscompany")%>"/></td>
                    </tr>
                    <tr>
                      <td>Previous Designation</td>
                      <td><input type="text" name="previousdesignation" size="30" value="<%=rs2.getString("previousdesignation")%>"/></td>
                    </tr>
                    <tr>
                      <td>Father Name</td>
                      <td><input type="text" name="fathername" size="30" value="<%=rs2.getString("fathername")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Mother Name</td>
                      <td><input type="text" name="mothername" size="30" value="<%=rs2.getString("mothername")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Wife Name</td>
                      <td><input type="text" name="wifename" size="30" value="<%=rs2.getString("wifename")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Child1 Name</td>
                      <td><input type="text" name="childname1" size="30" value="<%=rs2.getString("childname1")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Child2 Name</td>
                      <td><input type="text" name="childname2" size="30" value="<%=rs2.getString("childname2")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Child3 Name</td>
                      <td><input type="text" name="childname3" size="30" value="<%=rs2.getString("childname3")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td>Child4 Name</td>
                      <td><input type="text" name="childname4" size="30" value="<%=rs2.getString("childname4")%>" readonly="ReadOnly()"/></td>
                    </tr>
                    <tr>
                      <td colspan="2"><div align="center">
                       
                            <input type="submit" name="Submit" value="Update" />
                         
                        </div></td>
                    </tr>
              </table></td>
            </tr>
            <tr>
              <td></td>
            </tr>
          </table>
        <%

	rs2.close();
    st2.close();
	con2.close();
	}
	}
	catch(Exception e){
	}
	%>
      </td>
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
