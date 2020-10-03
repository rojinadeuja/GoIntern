package com.info.dao;

import com.info.model.Vacancy;
import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VacancyDao {
     public void insertVacancy(Vacancy vacancy) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "insert into vacancylist(title,number,detail,expirydate,cid) values(?,?,?,?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,vacancy.gettitle());
             pst.setString(2,vacancy.getnumber());
              pst.setString(3,vacancy.getdetail());
               pst.setString(4,vacancy.getexpirydate());
               pst.setString(5,vacancy.getcid());
                
           
            pst.execute();
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
     public void deleteVacancy(String ss) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
             
            String qry= "DELETE FROM vacancylist WHERE vid="+ss;
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
      public void viewVacancy(Vacancy vacancy) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "select * from vacancylist where number=10 ";    
            PreparedStatement pst= con.prepareStatement(qry);
            ResultSet rs=pst.executeQuery();
           while(rs.next()){
                Vacancy vacanc = new Vacancy();
                vacanc.setId(rs.getInt("vid"));
                vacanc.settitle(rs.getString("title"));
                vacanc.setnumber(rs.getString("number"));
                vacanc.setdetail(rs.getString("detail"));
                vacanc.setexpirydate(rs.getString("expirydate"));
                
                
            }
           
            
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
      
    
    
    public List<Vacancy> getVacancyList(){
        try{
            List<Vacancy> VacancyList= new ArrayList();
            Connection con=DBConnection.getConnection();
            String qry="select * from vacancylist";
            PreparedStatement pst=con.prepareStatement(qry);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                Vacancy vacancy = new Vacancy();
                vacancy.setId(rs.getInt("Id"));
                vacancy.settitle(rs.getString("title"));
                vacancy.setnumber(rs.getString("number"));
                vacancy.setdetail(rs.getString("detail"));
                vacancy.setexpirydate(rs.getString("expirydate"));
                VacancyList.add(vacancy);
            }
            return VacancyList;
            
            
        }
        
        
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
