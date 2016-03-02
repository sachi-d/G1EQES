/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Chandu Herath
 */
public class District {

    private int districtID;
    private int provinceID;
    private int code;
    private String name;
    private short status;

    public District() {

    }

    public District(int districtID, int provinceID, int code, String name, short status) {
        this.districtID = districtID;
        this.provinceID = provinceID;
        this.code = code;
        this.name = name;
        this.status = status;
    }

    /**
     * @return the districtID
     */
    public int getDistrictID() {
        return districtID;
    }

    /**
     * @param districtID the districtID to set
     */
    public void setDistrictID(int districtID) {
        this.districtID = districtID;
    }

    /**
     * @return the provinceID
     */
    public int getProvinceID() {
        return provinceID;
    }

    /**
     * @param provinceID the provinceID to set
     */
    public void setProvinceID(int provinceID) {
        this.provinceID = provinceID;
    }

    /**
     * @return the code
     */
    public int getCode() {
        return code;
    }

    /**
     * @param code the code to set
     */
    public void setCode(int code) {
        this.code = code;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the status
     */
    public short getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(short status) {
        this.status = status;
    }
}
