/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DBConnectionHandler;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Chanaka
 */
public class Counter {

    public static int getUnapprovedUserCount() {
        int regCount = 0;
        Connection con = DBConnectionHandler.createConnection();
        try {
            String query = "SELECT COUNT(*) FROM user WHERE flag=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, 0);
            ResultSet countRes = ps.executeQuery();
            while (countRes.next()) {
                regCount = countRes.getInt(1);
            }

        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops Something went wrong..!");
            }
        }
        return regCount;
    }

    public static int getRegisteredAppCount() {
        int regCount = 0;
        Connection con = DBConnectionHandler.createConnection();
        try {
            String query = "SELECT MAX(registry_id) FROM registry";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet countRes = ps.executeQuery();
            while (countRes.next()) {
                regCount = countRes.getInt(1);
            }

        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops Something went wrong..!");
            }
        }
        return regCount;
    }

    public static int getSelectedAppCount() {
        int selectedAppCount = 0;
        Connection con = DBConnectionHandler.createConnection();
        try {
            String query = "SELECT COUNT(registry_id) FROM registry WHERE registered_status='approved' OR registered_status='calculated' OR registered_status='int-selected' OR registered_status='passed' OR registered_status='active' OR registered_status='inactive' OR registered_status LIKE 'rejected#' OR registered_status LIKE 'int-deselect#' OR registered_status LIKE 'failed#'";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet countRes = ps.executeQuery();
            while (countRes.next()) {
                selectedAppCount = countRes.getInt(1);
            }
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops Something went wrong..!");
            }
        }
        return selectedAppCount;
    }

    public static int getUserCount() {
        int userCount = 0;
        Connection con = DBConnectionHandler.createConnection();
        try {
            String query = "SELECT COUNT(user_id) FROM user WHERE flag=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, 1);
            ResultSet countRes = ps.executeQuery();
            while (countRes.next()) {
                userCount = countRes.getInt(1);
            }
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops Something went wrong..!");
            }
        }
        return userCount;
    }

    public static int getSchoolCount() {
        int schoolCount = 0;
        Connection con = DBConnectionHandler.createConnection();
        try {
            String query = "SELECT COUNT(school_id) FROM school WHERE flag=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, 1);
            ResultSet countRes = ps.executeQuery();
            while (countRes.next()) {
                schoolCount = countRes.getInt(1);
            }
        } catch (Exception ex) {
            System.out.println(ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops Something went wrong..!");
            }
        }
        return schoolCount;
    }
}
