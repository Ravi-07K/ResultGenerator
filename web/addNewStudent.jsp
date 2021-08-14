<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
    
    String course = request.getParameter("course");
    String branch = request.getParameter("branch");
    String rollNo = request.getParameter("rollNo");
    String name = request.getParameter("name");
    String fatherName = request.getParameter("fatherName");
    String gender = request.getParameter("gender");
    
try
{
    Connection con = ConnectionProvider.getCon();
    PreparedStatement pst = con.prepareStatement("insert into student values(?,?,?,?,?,?)");
    pst.setString(1,course);
    pst.setString(2,branch);
    pst.setString(3,rollNo);
    pst.setString(4,name);
    pst.setString(5,fatherName);
    pst.setString(6,gender);
    
    pst.executeUpdate();
    response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
    out.println(e);
    e.printStackTrace();
}
%>