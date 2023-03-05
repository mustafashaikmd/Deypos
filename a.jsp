<%-- 
    Document   : a
    Created on : Sep 15, 2016, 4:33:10 PM
    Author     : shaiksardar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="jdbc.jsp" %>
<%
String sq=(String)session.getAttribute("id");
String sql="select * from  where EMAIL='"+sq+"'";
Statement s=con.createStatement();
ResultSet rs=s.executeQuery(sql);
while(rs.next()){
    %>
    
    
    
    
    
<%

}
%>