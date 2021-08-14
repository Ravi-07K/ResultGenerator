<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
    String rollNo = request.getParameter("rollNo");
    String subject1 = request.getParameter("subject_1");
    String subject2 = request.getParameter("subject_2");
    String subject3 = request.getParameter("subject_3");
    String subject4 = request.getParameter("subject_4");
    String subject5 = request.getParameter("subject_5");
    String subject6 = request.getParameter("subject_6");
    String subject7 = request.getParameter("subject_7");
    
try
{
    Connection con = ConnectionProvider.getCon();
    PreparedStatement pst = con.prepareStatement("insert into result values(?,?,?,?,?,?,?,?)");
    pst.setString(1,rollNo);
    pst.setString(2,subject1);
    pst.setString(3,subject2);
    pst.setString(4,subject3);
    pst.setString(5,subject4);
    pst.setString(6,subject5);
    pst.setString(7,subject6);
    pst.setString(8,subject7);
    
    pst.executeUpdate();
    response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
    out.println(e);
}
%>