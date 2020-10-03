package com.info.dao;

import com.info.model.Comment;

import com.info.utils.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CommentDao {
     public void insertComment(Comment comment) throws SQLException{
        Connection con=DBConnection.getConnection();
        try{
            
            String qry= "insert into commentlist(aname,email,content,vid) values(?,?,?,?) ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setString(1,comment.getaname());
             pst.setString(2,comment.getemail());
              pst.setString(3,comment.getcontent());
               pst.setString(4,comment.getvid());
                
           
            pst.execute();
        }                       
        catch(Exception e){
         e.printStackTrace();
        }
finally{
            con.close();
        }
        
              
    }
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
      
      
    
    
    public List<Comment> getCommentList(){
        try{
            List<Comment> CommentList= new ArrayList();
            Connection con=DBConnection.getConnection();
            String qry="select * from commentlist";
            PreparedStatement pst=con.prepareStatement(qry);
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                Comment comment = new Comment();
                comment.setId(rs.getInt("Id"));
                comment.setaname(rs.getString("aname"));
                comment.setemail(rs.getString("email"));
                comment.setcontent(rs.getString("content"));
                
                CommentList.add(comment);
            }
            return CommentList;
            
            
        }
        
        
        catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
    
}
