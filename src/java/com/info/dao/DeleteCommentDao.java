package com.info.dao;

import com.info.model.Comment;

import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DeleteCommentDao {

     public void deleteComment(String ss) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
             
            String qry= "DELETE FROM commentlist WHERE cmntid="+ss;
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
