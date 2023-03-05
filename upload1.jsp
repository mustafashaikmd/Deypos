<%@page import="java.sql.Statement"%>
<%@page import="security.EncDec"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="java.util.Random"%>
<%
      int count=0;
     String ekey="MYBESTKEY";
       String key="";
       Random r=new Random();
       while(key.length()!=8)
           key=key+ekey.charAt(r.nextInt(ekey.length()));
       DiskFileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload fileups=new ServletFileUpload(factory);
        List lists=fileups.parseRequest(request);
         FileItem cn=(FileItem)lists.get(0);
         String cn1=cn.getString();
        FileItem fname=(FileItem)lists.get(1);
        String filname=fname.getName();
        byte[] b=fname.get();
        String data=new String(b);
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEYPOS", "DEYPOS");
        PreparedStatement ps=con.prepareStatement("select FNAME,UNAME,FREF,UREF,KEY,ENCDATA from upload1 where FNAME=?",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        ps.setString(1,filname);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
           
            if(data.equals(EncDec.decrypt(rs.getString("ENCDATA"),(rs.getString("KEY")).getBytes()) ))
            {
                count=1;
                rs.updateString("UREF",rs.getString("UREF")+(String)session.getAttribute("user"));
                rs.updateRow();
                out.println("<script>alert(\" Your key is:"+rs.getString("Key")+" the file already exists with filename:"+filname+"\")</script>");
            }
            else
            {
            count=1; 
            PreparedStatement ps1=con.prepareStatement("insert into upload1 values(?,?,?,?,?,?,?)");
            ps1.setString(1,(String)session.getAttribute("user")+"_"+filname);
            ps1.setString(2, (String)session.getAttribute("user"));
            ps1.setString(3,(String)session.getAttribute("user")+"_"+filname);
            ps1.setString(4, (String)session.getAttribute("user"));
            ps1.setString(6,EncDec.encrypt(data, ekey.getBytes()));
            ps1.setString(5,key);
            ps1.setString(7,cn1);
            ps1.executeUpdate();
            out.println("<script>alert(\" your File name changed to "+(String)session.getAttribute("user")+"_"+filname+" and your key is"+key+"\")</script>");
            }
        }
        else
        {
           PreparedStatement ps4=con.prepareStatement("select FNAME,UNAME,FREF,UREF,KEY,ENCDATA from upload1",ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
           ResultSet rs4=ps4.executeQuery();
           while(rs4.next())
           {
                if(data.equals(EncDec.decrypt(rs4.getString("ENCDATA"),(rs4.getString("KEY")).getBytes())))
            {
                count++;
                rs4.updateString("FREF",rs4.getString("FREF")+filname);
                rs4.updateString("UREF",rs4.getString("UREF")+(String)session.getAttribute("id"));
                rs4.updateRow();
                out.println("<script>alert(\" Your key is:"+key+" file with same data already exists for the file:"+filname+"\")</script>");
            
            }
           }
        }
        if(count==0)
        {
            PreparedStatement ps1=con.prepareStatement("insert into upload1 values(?,?,?,?,?,?,?)");
            ps1.setString(1,filname);
            ps1.setString(2, (String)session.getAttribute("id"));
            ps1.setString(3,filname);
            ps1.setString(4, (String)session.getAttribute("id"));
            ps1.setString(5,key);
            ps1.setString(6,EncDec.encrypt(data, key.getBytes()));
              ps1.setString(7,cn1);
            ps1.executeUpdate();
                       
            out.println("<script>alert(\" Your key is:"+key+" for the Pure file:"+filname+"\")</script>");
        }
        RequestDispatcher rd=request.getRequestDispatcher("upload.jsp");
        rd.include(request, response);
               
%>
