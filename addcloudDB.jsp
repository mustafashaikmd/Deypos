<%@include file="jdbc.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%
    
         DiskFileItemFactory f=new DiskFileItemFactory();
          ServletFileUpload s=new ServletFileUpload(f);
            List l=s.parseRequest(request);
             FileItem f1=(FileItem)l.get(0);
             String id1=f1.getString();
                 FileItem f2=(FileItem)l.get(1);
               String name1=f2.getString();
                 FileItem f3=(FileItem)l.get(2);
                 String cap=f3.getString();
                 FileItem f4=(FileItem)l.get(3);
                 // String id23=f1.getString();
                 String file=f4.getString();
                      System.out.println("SID IS "+file);
                  //String =f8.getString();
                  String file1=f4.getString();
                  String filename=f4.getName();
                   String s23=f4.getString();
          
             String fpath=request.getRealPath("file")+"\\"+filename;
              f4.write(new File(fpath));
              
             Date d = new Date();
             java.sql.Date d1= new java.sql.Date(d.getTime());
             System.out.println(d1);
                 
        
              //String sta="pending";   
        Statement st=con.createStatement();
       String query="select count(*) from ADDCLOUD ";
         ResultSet rs = st.executeQuery(query);
         rs.next();
        int id =rs.getInt(1)+1;
        String rank="0";
        //String o=(String)session.getAttribute("oid");
        PreparedStatement pst=con.prepareStatement("insert into ADDCLOUD values(?,?,?,?,?,?,?)");
            pst.setString(1,id1);
            pst.setString(2,name1);
            pst.setString(3,cap);
             pst.setInt(4,id );
               pst.setString(5,filename);
              pst.setString(6,fpath);
               pst.setDate(7,d1);
           int i= pst.executeUpdate();
          out.println("Your File   is Uploaded   Sucessfully..........");
          response.sendRedirect("filealert1.jsp");
%>



