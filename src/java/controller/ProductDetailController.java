/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAOCategory;
import dao.DAOProduct;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HaiTL
 */
@WebServlet(name = "ProductDetailController", urlPatterns = {"/detail"})
public class ProductDetailController extends HttpServlet {

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
        int pid = Integer.parseInt(request.getParameter("pid"));
        String cid = request.getParameter("cid");
        int cateID = Integer.parseInt(cid);
        DAOCategory dao = new DAOCategory();
        DAOProduct daop = new DAOProduct();
        Product p = daop.getProductByID(pid);
        Category c = dao.findCateByID(cateID);
        List<Category> listC = dao.getAll();
        String indexPage = request.getParameter("index");
        int index = 1;
        if (indexPage != null) {
            index = Integer.parseInt(indexPage);
        }
        List<Product> list = daop.pagingDetail(index,cateID);
        int total = daop.getAllProductByCategory(cateID).size();
        int end = total / 4;
        if (total % 4 != 0) {
            end++;
        }
        request.setAttribute("id", pid);
        request.setAttribute("cateID", cateID);
        request.setAttribute("tag", index);
        request.setAttribute("end", end);
        request.setAttribute("AllCate", listC);
        request.setAttribute("p", p);
        request.setAttribute("c", c);
        request.setAttribute("list", list);
        request.getRequestDispatcher("ProductDetail.jsp").forward(request, response);
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
