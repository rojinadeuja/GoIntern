package com.info.dao;

import com.info.model.CV;



import com.info.utils.DBConnection;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class CVDao {
     public void insertCV(CV cv) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "insert into cvlist(fname,mname,lname,dob,phone,email,address,gender,education,experience,programming,software,certification,activities,alid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,cv.getfname());
             pst.setString(2,cv.getmname());
              pst.setString(3,cv.getlname());
                 pst.setString(4,cv.getdob());
               pst.setString(5,cv.getphone());
               pst.setString(6,cv.getemail());
               pst.setString(7,cv.getaddress());
                pst.setString(8,cv.getgender());
                pst.setString(9,cv.geteducation());
                       pst.setString(10,cv.getexperience());
                          pst.setString(11,cv.getprogramming());
                             pst.setString(12,cv.getsoftware());
                                pst.setString(13,cv.getcertification());
                                   pst.setString(14,cv.getactivities());
                                      pst.setString(15,cv.getalid());
            pst.execute();
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
                 
              
        
    }
     
    
     
   
     
    public void updateCV(CV cv, String ss) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            //UPDATE `cvlist` SET `lname` = 'Shrestha' WHERE `cvlist`.`Id` = 6 
            // String qry= "DELETE FROM commentlist WHERE Id="+ss;
          //String qry="UPDATE `cvlist` SET `lname` = 'Deujaa' WHERE `cvlist`.`Id` = 1; ";
            String qry= "UPDATE cvlist SET fname=?,mname=?,lname=?,dob=?,phone=?,email=?,address=?,gender=?,education=?,experience=?,programming=?,software=?,certification=?,activities=? WHERE cvlist.cvid="+ss;
            PreparedStatement pst= con.prepareStatement(qry);
             pst.setString(1,cv.getfname());
             pst.setString(2,cv.getmname());
              pst.setString(3,cv.getlname());
                 pst.setString(4,cv.getdob());
               pst.setString(5,cv.getphone());
               pst.setString(6,cv.getemail());
               pst.setString(7,cv.getaddress());
                pst.setString(8,cv.getgender());
                pst.setString(9,cv.geteducation());
                       pst.setString(10,cv.getexperience());
                          pst.setString(11,cv.getprogramming());
                             pst.setString(12,cv.getsoftware());
                                pst.setString(13,cv.getcertification());
                                   pst.setString(14,cv.getactivities());
                                      //pst.setString(15,cv.getalid());
            
           
            pst.execute();
         
        }                       
        catch(Exception e){
            e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
    
   


    
}
