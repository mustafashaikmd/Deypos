/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author home
 */
public class upload extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
           
             Class.forName("oracle.jdbc.driver.OracleDriver"); 
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","student","student");
            Statement st=con.createStatement();
           
            DiskFileItemFactory dfu = new DiskFileItemFactory();
            ServletFileUpload sfu = new ServletFileUpload(dfu);
            List l = sfu.parseRequest(request);
            FileItem f0 = (FileItem) l.get(0);
            String fname = f0.getName();
            byte[] data = f0.get();
           
             if(con != null)
           {
            String s="select * from UPLOAD where fname='"+fname+"'";
           ResultSet rs= st.executeQuery(s);
           if(rs.next())
           {
               if(rs.getString("fdata").equals(new String(data)))
               {
                   out.println("file already exists");
                           
               }
               else
               {
                   out.println("name already exists!please rename");
                   fname=fname+""+1;
                    PreparedStatement ps=con.prepareStatement("insert into UPLOAD values(?,?)");
            ps.setString(1,fname);
            ps.setString(2, new String(data));
            ps.executeUpdate();
               }
           }
               else
           {
               String s1="select * from UPLOAD where fdata='"+new String(data)+"'";
           ResultSet rs1= st.executeQuery(s1);
           if(rs1.next())
           {
               
              out.println("file already exists with different name"); 
           }
           else
           {
                PreparedStatement ps=con.prepareStatement("insert into UPLOAD values(?,?)");
            ps.setString(1,fname);
            ps.setString(2, new String(data));
            ps.executeUpdate();
            out.println("uploaded successfully"); 

           }
           
           }    
           
           }
        }
        catch (SQLException ex) {
            Logger.getLogger(upload.class.getName()).log(Level.SEVERE, null, ex);
        }            
            
            
        catch (Exception ex) {
            Logger.getLogger(upload.class.getName()).log(Level.SEVERE, null, ex);
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
