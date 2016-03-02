/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Chanaka
 */
public class Deadline {

    private int deadlineId;
    private String year;
    private Date p1;
    private Date g1;
    private Date p2;
    private Date g2;

    public Deadline() {
    }

    public Deadline(int deadlineId, String year, Date p1, Date g1, Date p2, Date g2) {
        this.deadlineId = deadlineId;
        this.year = year;
        this.p1 = p1;
        this.g1 = g1;
        this.p2 = p2;
        this.g2 = g2;
    }

    /**
     * @return the deadlineId
     */
    public int getDeadlineId() {
        return deadlineId;
    }

    /**
     * @param deadlineId the deadlineId to set
     */
    public void setDeadlineId(int deadlineId) {
        this.deadlineId = deadlineId;
    }

    /**
     * @return the year
     */
    public String getYear() {
        return year;
    }

    /**
     * @param year the year to set
     */
    public void setYear(String year) {
        this.year = year;
    }

    /**
     * @return the p1
     */
    public Date getP1() {
        return p1;
    }

    /**
     * @param p1 the p1 to set
     */
    public void setP1(Date p1) {
        this.p1 = p1;
    }

    /**
     * @return the g1
     */
    public Date getG1() {
        return g1;
    }

    /**
     * @param g1 the g1 to set
     */
    public void setG1(Date g1) {
        this.g1 = g1;
    }

    /**
     * @return the p2
     */
    public Date getP2() {
        return p2;
    }

    /**
     * @param p2 the p2 to set
     */
    public void setP2(Date p2) {
        this.p2 = p2;
    }

    /**
     * @return the g2
     */
    public Date getG2() {
        return g2;
    }

    /**
     * @param g2 the g2 to set
     */
    public void setG2(Date g2) {
        this.g2 = g2;
    }
}
