<%-- 
    Document   : userDB
    Created on : Aug 31, 2016, 4:15:20 PM
    Author     : shaiksardar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="jdbc.jsp" %>
<%
String u=request.getParameter("uname");
String p=request.getParameter("pass");

PreparedStatement ps=con.prepareStatement("select * from REGISTER where EMAIL='"+u+"' and PASSWORD='"+p+"'");
ResultSet rs=ps.executeQuery();
if(rs.next()){
    session.setAttribute("id", u);
%>
<script>
    alert("User login Sucessfully");
    window.location="userhome.jsp";
</script>
<%
} else{
%>
<script>
    alert("User login Failed");
    window.location="user.jsp";
</script>
<%

}
%>