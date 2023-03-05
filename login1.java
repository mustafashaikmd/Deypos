/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author home
 */
@WebServlet(name = "login", urlPatterns = {"/login"})

public class login1 extends HttpServlet {

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
//           String type=request.getParameter("type");
        String uname= request.getParameter("uname");
            String password=request.getParameter("pwd"); 
             Class.forName("oracle.jdbc.driver.OracleDriver"); 
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","student","student");
            Statement st=con.createStatement();
            String s;
            ResultSet rs;
          if(con != null)
           {
               if(uname.equals("admin@gmail.com")){
                   s="select * from ADMINTABLE where ADMINNAME='"+uname+ "' and password='"+password+"'";
               
               rs=st.executeQuery(s);
               if(rs.next()) {    
               HttpSession session =request.getSession(true);
                    session.setAttribute("user",uname);
                    response.sendRedirect("adminhome.jsp");
                   
               }}else
               {
               s="select * from Registration where user_name='"+uname+ "' and password='"+password+"'";
               rs=st.executeQuery(s);
               if(rs.next()) {    
               HttpSession session =request.getSession(true);
                    session.setAttribute("user",uname);
                    response.sendRedirect("userhome.jsp");
               }
               else{
               response.sendRedirect("login1.jsp?va=0");
               }}}
               else{
               response.sendRedirect("login1.jsp?va=0");
               }
           
           
        } catch(Exception e){
            e.printStackTrace();}
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


    