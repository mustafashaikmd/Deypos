<%-- 
    Document   : managerDB
    Created on : Aug 31, 2016, 4:15:49 PM
    Author     : shaiksardar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="jdbc.jsp" %>
<%
String u=request.getParameter("uname");
String p=request.getParameter("pass");

PreparedStatement ps=con.prepareStatement("select * from MANAGER where USERNAME='"+u+"' and PASSWORD='"+p+"'");
ResultSet rs=ps.executeQuery();
if(rs.next()){
%>
<script>
    alert("Manager login Sucessfully");
    window.location="managerhome.jsp";
</script>
<%
} else{
%>
<script>
    alert("Manager login Failed");
    window.location="manager.jsp";
</script>
<%

}
%>
