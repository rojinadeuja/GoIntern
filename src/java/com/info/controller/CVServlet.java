/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.controller;

import com.info.dao.CVDao;
import com.info.model.CV;
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
@WebServlet(name = "CVServlet", urlPatterns = {"/CVServlet"})
public class CVServlet extends HttpServlet {

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
           
            
            CVDao sd=new CVDao();
            
            String alid,fname,mname,lname,dob,phone,email,address,gender,education,experience,programming,software,certification,activities;
          
          
            fname=request.getParameter("fname");
            mname=request.getParameter("mname");
            lname=request.getParameter("lname");
            dob=request.getParameter("dob");
            phone=request.getParameter("phone");
            email=request.getParameter("email");
            address=request.getParameter("address");
            gender=request.getParameter("gender");
            education=request.getParameter("education");
            experience=request.getParameter("experience");
            programming=request.getParameter("programming");
            software=request.getParameter("software");
            certification=request.getParameter("certification");
            activities=request.getParameter("activities");
             alid=request.getParameter("alid"); //foreign key
           
               
            CV cv= new CV();
       
        
            cv.setfname(fname);
            cv.setmname(mname);
            cv.setlname(lname);
            cv.setdob(dob);
            cv.setphone(phone);
            cv.setemail(email);
            cv.setaddress(address);
            cv.setgender(gender);
            cv.seteducation(education);
            cv.setexperience(experience);
            cv.setprogramming(programming);
            cv.setsoftware(software);
            cv.setcertification(certification);
            cv.setactivities(activities);
                cv.setalid(alid);
            
            sd.insertCV(cv);
            
        


    response.sendRedirect("applicant.jsp"); 


            
           
            
          
            
           
           // out.println("The record of cv has been entered.");
           
            
          //List<CV> CVList=sd.getCVList();
          //request.setAttribute("CVList", CVList);
          //request.getRequestDispatcher("cvlist.jsp").forward(request, response);
            
            
            
            
           
            
          
            
           
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
