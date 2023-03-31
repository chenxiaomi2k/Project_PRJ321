/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAOAdmin;
import entity.Admin;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author HaiTL
 */
@WebServlet(name = "AdminLoginController", urlPatterns = {"/adminlogin"})
public class AdminLoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DAOAdmin dao = new DAOAdmin();
        String username = request.getParameter("username");
        String pass = request.getParameter("password");
        String remember = request.getParameter("remember");
        Admin a = dao.login(username, pass);
        if(a != null){
            HttpSession session = request.getSession();
            session.setAttribute("account", a);
            Cookie ca = new Cookie("user", username);
            Cookie cp = new Cookie("pass", pass);
            Cookie cr = new Cookie("rem", remember);
            if (remember != null) {
                ca.setMaxAge(60 * 60 * 24);
                cp.setMaxAge(60 * 60 * 24);
                cr.setMaxAge(60 * 60 * 24);
            } else {
                ca.setMaxAge(0);
                cp.setMaxAge(0);
                cr.setMaxAge(0);
            }
            response.addCookie(ca);
            response.addCookie(cp);
            response.addCookie(cr);
        }else{           
            String msg = "Account '" + username + "' does not exist! Please register a new account!";
            request.setAttribute("mess", msg);
            request.getRequestDispatcher("adminlogin.jsp").forward(request, response);
        }
        request.setAttribute("hiddenCustomer", "hidden");
        request.setAttribute("hiddenProduct", "hidden");
        request.setAttribute("hiddenBill", "hidden");
        request.getRequestDispatcher("admin.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
