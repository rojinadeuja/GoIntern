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
public class Vacancy {
     private int Id;
    private String title;
    private String number;
    private String detail;
    private String expirydate;
   private String cid;
    
    public int getId() {
        return Id;
    }
    public void setId(int Id) {
        this.Id = Id;
    }

   
    public String gettitle() {
        return title;
    }
    public void settitle(String title) {
        this.title = title;
    }
    public String getnumber() {
        return number;
    }

    /**
     * @param Name the Name to set
     */
    public void setnumber(String number) {
        this.number = number;
    }
    public String getdetail() {
        return detail;
    }

    /**
     * @param Name the Name to set
     */
    public void setdetail(String detail) {
        this.detail = detail;
    }
    public String getexpirydate() {
        return expirydate;
    }

    /**
     * @param Name the Name to set
     */
    public void setexpirydate(String expirydate) {
        this.expirydate = expirydate;
    }
     public String getcid() {
        return cid;
    }

    /**
     * @param Name the Name to set
     */
    public void setcid(String cid) {
        this.cid = cid;
    }
    





  
    
}
