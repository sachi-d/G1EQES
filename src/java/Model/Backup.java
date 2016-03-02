/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Timestamp;

/**
 *
 * @author Chandu Herath
 */
public class Backup implements java.io.Serializable {

    private int backupID;
    private Timestamp datetime;
    private String url;

    public Backup() {

    }

    public Backup(int backupID, Timestamp datetime, String url) {
        this.backupID = backupID;
        this.datetime = datetime;
        this.url = url;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the backupID
     */
    public int getBackupID() {
        return backupID;
    }

    /**
     * @param backupID the backupID to set
     */
    public void setBackupID(int backupID) {
        this.backupID = backupID;
    }

    /**
     * @return the datetime
     */
    public Timestamp getDatetime() {
        return datetime;
    }

    /**
     * @param datetime the datetime to set
     */
    public void setDatetime(Timestamp datetime) {
        this.datetime = datetime;
    }
}
