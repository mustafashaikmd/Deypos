<%-- 
    Document   : feedbackDB
    Created on : Sep 12, 2016, 12:48:21 PM
    Author     : shaiksardar
--%>
<%@include file="jdbc.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%
String i= request.getParameter("id");
String m= request.getParameter("mess");
String sql="insert into feedback values(?,?)";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, i);
ps.setString(2, m);
int j=ps.executeUpdate();
if(j>0){
%>
<script>
    alert("Thank you for your valiable information");
    window.location="feedback.jsp";
</script>


<%
}else{

%>
<script>
    alert("Thank you");
    window.location="feedback.jsp";
</script>

<%
}
%>