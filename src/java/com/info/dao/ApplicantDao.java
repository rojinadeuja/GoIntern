package com.info.dao;

import com.info.model.Applicant;



import com.info.utils.DBConnection;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ApplicantDao {
     public void insertApplicant(Applicant applicant) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "insert into applicantlist(fname,mname,lname,address,gender,phone,email) values(?,?,?,?,?,?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,applicant.getfname());
             pst.setString(2,applicant.getmname());
              pst.setString(3,applicant.getlname());
               pst.setString(4,applicant.getaddress());
                pst.setString(5,applicant.getgender());
                 pst.setString(6,applicant.getphone());
                  pst.setString(7,applicant.getemail());
                    
            pst.execute();
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
                 
              
        
    }
     
    
     
   
     
    public void updateApplicant(Applicant applicant, String ss) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            //UPDATE `applicantlist` SET `lname` = 'Shrestha' WHERE `applicantlist`.`Id` = 6 
            // String qry= "DELETE FROM commentlist WHERE Id="+ss;
          //String qry="UPDATE `applicantlist` SET `lname` = 'Deujaa' WHERE `applicantlist`.`Id` = 1; ";
            String qry= "UPDATE applicantlist SET fname=?,mname=?,lname=?,address=?,gender=?,phone=?,email=? WHERE applicantlist.alid="+ss;
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,applicant.getfname());
             pst.setString(2,applicant.getmname());
              pst.setString(3,applicant.getlname());
               pst.setString(4,applicant.getaddress());
                pst.setString(5,applicant.getgender());
                 pst.setString(6,applicant.getphone());
                  pst.setString(7,applicant.getemail());
                    
            
           
            pst.execute();
         
        }                       
        catch(Exception e){
            e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
    
    public List<Applicant> getApplicantList(){
        try{
            List<Applicant> ApplicantList= new ArrayList();
            Connection con=DBConnection.getConnection();
            String qry="select * from applicantlist";
            PreparedStatement pst=con.prepareStatement(qry);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                Applicant applicant = new Applicant();
                applicant.setId(rs.getInt("Id"));
                applicant.setfname(rs.getString("fname"));
                applicant.setmname(rs.getString("mname"));
                applicant.setlname(rs.getString("lname"));
                applicant.setaddress(rs.getString("address"));
                applicant.setgender(rs.getString("gender"));
                applicant.setphone(rs.getString("phone"));
                applicant.setemail(rs.getString("email"));
               
                ApplicantList.add(applicant);
            }
            return ApplicantList;
            
            
        }
        
        
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
