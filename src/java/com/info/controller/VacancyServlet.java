/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.controller;

import com.info.dao.VacancyDao;
import com.info.model.Vacancy;
import java.io.IOException;
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

/**
 *
 * @author Lenovo G40
 */
@WebServlet(name = "VacancyServlet", urlPatterns = {"/VacancyServlet"})
public class VacancyServlet extends HttpServlet {

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
           
            VacancyDao sd=new VacancyDao();
            
            String title,number,detail,expirydate,cid;
            title=request.getParameter("title");
            number=request.getParameter("number");
            detail=request.getParameter("detail");
            expirydate=request.getParameter("expirydate");
            cid=request.getParameter("cid"); //foreign key
           
               
            Vacancy vacancy= new Vacancy();
            
            vacancy.settitle(title);
            vacancy.setnumber(number);
            vacancy.setdetail(detail);
            vacancy.setexpirydate(expirydate);
            vacancy.setcid(cid);
         
            
            
            
            sd.insertVacancy(vacancy);
            
           
           //out.println("The record of vacancy has been entered.");
            response.sendRedirect("company.jsp");
            
          //List<Vacancy> VacancyList=sd.getVacancyList();
          //request.setAttribute("VacancyList", VacancyList);
         // request.getRequestDispatcher("vacancylist.jsp").forward(request, response);
            
            
            
            
           
            
          
            
           
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
