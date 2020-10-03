/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.controller;

import com.info.dao.ApplicantDao;
import com.info.model.Applicant;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
@WebServlet(name = "ApplicantServlet", urlPatterns = {"/ApplicantServlet"})
public class ApplicantServlet extends HttpServlet {

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
           
            
            ApplicantDao sd=new ApplicantDao();
            
            String fname,mname,lname,address,gender,phone,email;
          
            
            fname=request.getParameter("fname");
            mname=request.getParameter("mname");
            lname=request.getParameter("lname");
            address=request.getParameter("address");
            gender=request.getParameter("gender");
            phone=request.getParameter("phone");
            email=request.getParameter("email");
         
           
               
            Applicant applicant= new Applicant();
       
            applicant.setfname(fname);
            applicant.setmname(mname);
            applicant.setlname(lname);
            applicant.setaddress(address);
            applicant.setgender(gender);
            applicant.setphone(phone);
            applicant.setemail(email);
          
            
            
            sd.insertApplicant(applicant);
            
        


    response.sendRedirect("choose_applicant.jsp"); 


            
           
            
          
            
           
           // out.println("The record of applicant has been entered.");
           
            
          //List<Applicant> ApplicantList=sd.getApplicantList();
          //request.setAttribute("ApplicantList", ApplicantList);
          //request.getRequestDispatcher("applicantlist.jsp").forward(request, response);
            
            
            
            
           
            
          
            
           
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
