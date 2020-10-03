/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.simple;

import com.info.utils.DBConnection;
import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class CheckUsername extends HttpServlet {

 private static final long serialVersionUID = -734503860925086969L;

 protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

           // String connectionURL = "jdbc:mysql://localhost:3306/students"; // students is my database name
           // Connection connection = null;
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            //connection = DriverManager.getConnection(connectionURL, "root", "password");
            Connection con=DBConnection.getConnection();
            String aname = request.getParameter("aname");
            String apassword = request.getParameter("apassword");
            PreparedStatement ps = con.prepareStatement("select aname from applicant where aname=?");
            ps.setString(1,aname);
            ResultSet rs = ps.executeQuery();
            if (!rs.next()) {
               
           out.println("<font color=green><b>"+aname+"</b> is avaliable");
            
            }
            else{
                out.println("<font color=red><b>"+aname+"</b> is already in use</font>");
           // out.println(""+aname+" is already in use");
            }
            out.println();

        } catch (Exception ex) {
            out.println("Error ->" + ex.getMessage());
        } finally {
            out.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
