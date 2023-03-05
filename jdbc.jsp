<%-- 
    Document   : jdbc
    Created on : Aug 31, 2016, 4:09:16 PM
    Author     : shaiksardar
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEYPOS", "DEYPOS");
%>
