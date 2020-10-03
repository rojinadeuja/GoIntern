package com.info.dao;

import com.info.model.Company;
import com.info.utils.DBConnection;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.Part;

public class CompanyDao {
     public void insertCompany(Company company) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "insert into companylist(name,website,postaladdress,address,phone,email,details) values(?,?,?,?,?,?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,company.getname());
             pst.setString(2,company.getwebsite());
              pst.setString(3,company.getpostaladdress());
               pst.setString(4,company.getaddress());
                 pst.setString(5,company.getphone());
                  pst.setString(6,company.getemail());
                    pst.setString(7,company.getdetails());   
                 
            
           
            pst.execute();
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
    public void updateCompany(Company company, String ss) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            //UPDATE `companylist` SET `postaladdress` = 'Shrestha' WHERE `companylist`.`Id` = 6 
            // String qry= "DELETE FROM commentlist WHERE Id="+ss;
          //String qry="UPDATE `companylist` SET `postaladdress` = 'Deujaa' WHERE `companylist`.`Id` = 1; ";
            String qry= "UPDATE companylist SET name=?,website=?,postaladdress=?,address=?,phone=?,email=?,details=? WHERE companylist.clid="+ss;
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,company.getname());
             pst.setString(2,company.getwebsite());
              pst.setString(3,company.getpostaladdress());
               pst.setString(4,company.getaddress());
                 pst.setString(6,company.getphone());
                  pst.setString(7,company.getemail());
                    pst.setString(8,company.getdetails());
            
           
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