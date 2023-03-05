/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException; 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; 

/**
 *
 * @author home
 */
 
public class servlet1 extends HttpServlet {

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
            Class.forName("oracle.jdbc.driver.OracleDriver"); 
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEYPOS","DEYPOS");
          if(con != null)
           {
            String uname= request.getParameter("uname");
            String query="select * from Registration where USER_NAME= '"+ uname +"'";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            String password=request.getParameter("pwd");
            String pno=request.getParameter("phone");
            String email=request.getParameter("email");
            String gender=request.getParameter("gender"); 
               PreparedStatement ps=con.prepareStatement("insert into Registration values(?,?,?,?,?)");
               ps.setString(1,uname);
               ps.setString(2,password);
               ps.setString(3,pno);
               ps.setString(4,email);
               ps.setString(5,gender); 
              if(!rs.next())
              {
                  int i=ps.executeUpdate();
               if(i!=0)
               {
                   response.sendRedirect("login1.jsp?va=1");
               }
               else
               {
                   out.println("inserting failed");
               }
              }
              else{
                  out.println("<script>alert(\"Given user name already exits please choose another user name\")</script>");
                      RequestDispatcher rd=request.getRequestDispatcher("Register1.jsp");
                      rd.include(request, response);
                  
              }

          }
        } catch (Exception ex) {
        }       
   
finally {            
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
