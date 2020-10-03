/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.controller;

import com.info.dao.CompanyDao;
import com.info.model.Company;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Lenovo G40
 */
@WebServlet(name = "CompanyServlet", urlPatterns = {"/CompanyServlet"})
public class CompanyServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
       
                 
            CompanyDao sd=new CompanyDao();
            
            String name,website,postaladdress,address,phone,email,details;
            name=request.getParameter("name");
            website=request.getParameter("website");
            postaladdress=request.getParameter("postaladdress");
            address=request.getParameter("address");
            phone=request.getParameter("phone");
            email=request.getParameter("email");
            details=request.getParameter("details");
            
            Company company= new Company();
            
            company.setname(name);
            company.setwebsite(website);
            company.setpostaladdress(postaladdress);
            company.setaddress(address);   
            company.setphone(phone);
            company.setemail(email);
            company.setdetails(details);
            
            
            
            sd.insertCompany(company);
          
           response.sendRedirect("choose_company.jsp");
            
          //List<Company> CompanyList=sd.getCompanyList();
          //request.setAttribute("CompanyList", CompanyList);
          //request.getRequestDispatcher("companylist.jsp").forward(request, response);
            
            
            
            
           
            
          
            
           
        }
        
        catch(Exception e){
            e.printStackTrace();
        }
        
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
