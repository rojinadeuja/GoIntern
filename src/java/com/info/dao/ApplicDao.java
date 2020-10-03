package com.info.dao;

import com.info.model.Applic;



import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ApplicDao {
     
              
    
    
    
     public void insertApplicinfo(Applic applic) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
         
            
            //String qry= "insert into applicant (aname,apassword) select name,password from applicantlist";
            String qry= "insert into applicant (aname,apassword,uid) values(?,?,?)";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,applic.getaname());
            pst.setString(2,applic.getapassword());
             pst.setString(3,applic.getuid());
            pst.execute();
            //String qry1= "insert into applicant (uid) select Id from applicantlist where applicant.aid=applicantlist.Id";
            //PreparedStatement pst1= con.prepareStatement(qry1);
            //pst1.execute();
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
     public void insertApplicantinfo(Applic applic) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
         
            
            //String qry= "insert into applicant (aname,apassword) select name,password from applicantlist";
            String qry= "insert into applicant (uid) select Id from applicantlist where applicant.aid=applicantlist.alid";
            PreparedStatement pst= con.prepareStatement(qry);
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
