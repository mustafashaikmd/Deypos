<%-- 
    Document   : regDB
    Created on : Aug 31, 2016, 4:21:55 PM
    Author     : shaiksardar
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="jdbc.jsp" %>
<%

String n=request.getParameter("uname");
String e=request.getParameter("email");
String m=request.getParameter("mob");
String g=request.getParameter("sex");
String p=request.getParameter("pass");
String cp=request.getParameter("cpass");
String a=request.getParameter("add");
Statement s=con.createStatement();
ResultSet rs=s.executeQuery("select count(*) from REGISTER ");
rs.next();
int j=rs.getInt(1)+1;
String s1="St"+j;
String sql="insert into REGISTER values(?,?,?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, s1);
ps.setString(2, n);
ps.setString(3, e);
ps.setString(4, m);
ps.setString(5, g);
ps.setString(6, p);
ps.setString(7, cp);
ps.setString(8, a);
int i1=ps.executeUpdate();
if(i1>0){
%>
<script>
    alert("User Registeration Sucessfully......");
    window.location="user.jsp";
</script>
<%
}else {
%>
<script>
    alert("User Registeration Failed......");
    window.location="reg.jsp";
</script>
<%

}
%>