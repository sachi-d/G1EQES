/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DBConnectionHandler;
import Model.User;
import java.net.Inet4Address;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Chanaka
 */
public class SaveLog {

    public static boolean saveLog(HttpServletRequest request, String type, String msg) {

        Connection con = DBConnectionHandler.createConnection();

        try {
            con.setAutoCommit(false);
            User u = (User) request.getSession().getAttribute("user");
            String query = "INSERT INTO log(user_id,ip,type,description) VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, u.getUserId());
            ps.setString(2, Inet4Address.getLocalHost().getHostAddress());
            ps.setString(3, type);
            ps.setString(4, msg);
            ps.executeUpdate();
            con.commit();
            con.close();
            return true;
        } catch (SQLException | UnknownHostException e) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                return false;
            }
            return false;
        }
    }
}
