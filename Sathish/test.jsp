<%@ page import="java.sql.*,java.io.*,java.util.* "%>
	

	<%
    String abc=request.getParameter("email");
	String def=request.getParameter("password");
	String ghi="admin";
	String ijk="employee";


	
	ResultSet rs=null;
	Connection con=null;
	Statement st=null;
try
{
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	con=DriverManager.getConnection("jdbc:mysql://localhost/svit_elots", "root", "");
	st=con.createStatement();
	rs=st.executeQuery("select email,password,position from register where email='"+abc+"' ");
	rs.next();

	String pqr=rs.getString("email");
	session.setAttribute("email", pqr);
	String stu=rs.getString("password");
	String vwx=rs.getString("position");
  	
    if(abc.equals(pqr) && def.equals(stu) && ghi.equals(vwx) )
 
    {
    %>
    <jsp:forward page="admin/admin_index.jsp"/>
    <%
    }
	
	else if(abc.equals(pqr) && def.equals(stu) && ijk.equals(vwx) )
 
    {
    %>
    <jsp:forward page="employee/employee_index.jsp"/>
    <%
    }
	
	
    else
    {
    %>
    <jsp:forward page="home.jsp"/>
    <%
    } 
    }
    catch(Exception ef)
    {
    %>
    <jsp:forward page="home.jsp"/>
    <%
    }
    finally
    {
    rs.close();
    st.close();
    con.close();
    }
    %> 
   