<%-- 
    Document   : cloudserviceDB
    Created on : Aug 31, 2016, 4:22:41 PM
    Author     : shaiksardar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="jdbc.jsp" %>
<%
String u=request.getParameter("uname");
String p=request.getParameter("pass");

PreparedStatement ps=con.prepareStatement("select * from CLOUDSERVICE where USERNAME='"+u+"' and PASSWORD='"+p+"'");
ResultSet rs=ps.executeQuery();
if(rs.next()){
%>
<script>
    alert("Cloudservice login Sucessfully");
    window.location="cloudservicehome.jsp";
</script>
<%
} else{
%>
<script>
    alert("Cloudservice login Failed");
    window.location="cloudservice.jsp";
</script>
<%

}
%>