/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.dao;

import com.info.model.CUser;
import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Lenovo G40
 */
public class CUserDao {
    public CUser verifyCUser(CUser cuser){
        try{
            Connection con=DBConnection.getConnection();
            String qry="select * from company where cname=? and cpassword=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setString(1,cuser.getCUserName());
            pst.setString(2,cuser.getCUserPassword());
            
            ResultSet rs=pst.executeQuery();
            
            while(rs.next()){
                
                CUser verifiedCUser=new CUser();
                verifiedCUser.setCUserId(rs.getInt("cid"));
                verifiedCUser.setCUserName(rs.getString("cname"));
                verifiedCUser.setCUserPassword(rs.getString("cpassword"));
              
                return verifiedCUser;
            }
         
                
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
