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
public class CUser {
    private int cuserId;
    private String cuserName;
    private String cuserPassword;

    /**
     * @return the cuserId
     */
    public int getCUserId() {
        return cuserId;
    }

    /**
     * @param cuserId the cuserId to set
     */
    public void setCUserId(int cuserId) {
        this.cuserId = cuserId;
    }

    /**
     * @return the cuserName
     */
    public String getCUserName() {
        return cuserName;
    }

    /**
     * @param cuserName the cuserName to set
     */
    public void setCUserName(String cuserName) {
        this.cuserName = cuserName;
    }

    /**
     * @return the cuserPassword
     */
    public String getCUserPassword() {
        return cuserPassword;
    }

    /**
     * @param cuserPassword the cuserPassword to set
     */
    public void setCUserPassword(String cuserPassword) {
        this.cuserPassword = cuserPassword;
    }
    
}
