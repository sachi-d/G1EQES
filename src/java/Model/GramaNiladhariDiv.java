/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Chanaka
 */
public class GramaNiladhariDiv {

    private int gramaDivID;
    private int divisionSecID;
    private int code;
    private String name;
    private short status;

    public GramaNiladhariDiv() {
    }

    public GramaNiladhariDiv(int gramaDivID, int divisionSecID, int code, String name, short status) {
        this.gramaDivID = gramaDivID;
        this.divisionSecID = divisionSecID;
        this.code = code;
        this.name = name;
        this.status = status;
    }

    /**
     * @return the gramaDivID
     */
    public int getGramaDivID() {
        return gramaDivID;
    }

    /**
     * @param gramaDivID the gramaDivID to set
     */
    public void setGramaDivID(int gramaDivID) {
        this.gramaDivID = gramaDivID;
    }

    /**
     * @return the divisionSecID
     */
    public int getDivisionSecID() {
        return divisionSecID;
    }

    /**
     * @param divisionSecID the divisionSecID to set
     */
    public void setDivisionSecID(int divisionSecID) {
        this.divisionSecID = divisionSecID;
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
