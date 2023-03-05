<%-- 
    Document   : DownLoad
    Created on : Apr 2, 2015, 1:08:33 AM
    Author     : dell
--%>

<%@page import="security.EncDec"%>
<%@page import="java.io.DataOutputStream"%>
<%@include file="jdbc.jsp" %>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

         <%
         
        ServletOutputStream sos=response.getOutputStream();
        response.reset();
        String value=request.getParameter("fileid");
        response.setHeader("content-disposition","attachment;filename="+value);
        PreparedStatement ps=con.prepareStatement("select * from upload1 where fname=?");
        ps.setString(1,value);
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
            sos.write(EncDec.decrypt(rs.getString(6),rs.getString(5).getBytes()).getBytes());
            sos.flush();
            sos.close();
        System.out.println(rs.getString(6));}
       %> 
       
   