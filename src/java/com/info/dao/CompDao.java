package com.info.dao;

import com.info.model.Comp;



import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CompDao {
     
              
    
    
    
     public void insertCompinfo(Comp comp) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
         
            
           
            String qry= "insert into company (cname,cpassword,uid) values(?,?,?)";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,comp.getcname());
            pst.setString(2,comp.getcpassword());
            pst.setString(3,comp.getuid());
            pst.execute();
     
                    
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
     public void insertCompanyinfo(Comp comp) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
         
            
            //String qry= "insert into applicant (aname,apassword) select name,password from applicantlist";
            String qry= "insert into company (uid) select clid from companylist where company.cid=companylist.clid";
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
