/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.info.model;

/**
 *
 * @author Lenovo G40
 */
public class Comment {
     private int Id;
    private String aname;
    private String email;
    private String content;
    private String vid;
   
    
    public int getId() {
        return Id;
    }
    public void setId(int Id) {
        this.Id = Id;
    }

   
    public String getaname() {
        return aname;
    }
    public void setaname(String aname) {
        this.aname = aname;
    }
    public String getemail() {
        return email;
    }

    /**
     * @param Name the Name to set
     */
    public void setemail(String email) {
        this.email = email;
    }
    public String getcontent() {
        return content;
    }

    /**
     * @param Name the Name to set
     */
    public void setcontent(String content) {
        this.content = content;
    }
  public String getvid() {
        return vid;
    }

    /**
     * @param Name the Name to set
     */
    public void setvid(String vid) {
        this.vid = vid;
    }
  





  
    
}
