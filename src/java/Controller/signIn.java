/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Telephone;
import Model.User;
import DB.DBConnectionHandler;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chanaka
 */
public class signIn extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            String un = request.getParameter("un");

            MessageDigest md = null;
            try {
                md = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException ex) {
                out.write(ex.toString());
            }
            md.reset();
            md.update(request.getParameter("pw").getBytes());
            byte[] digest = md.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(Integer.toHexString((int) (b & 0xff)));
            }
            String pw = sb.toString();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM user WHERE username=? AND password=? AND flag=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, un);
            ps.setString(2, pw);
            ps.setInt(3, 1);
            ResultSet rsetUser = ps.executeQuery();

            if (rsetUser.next()) {
                query = "SELECT * FROM telephone WHERE user_id=?";
                ps = con.prepareStatement(query);
                ps.setString(1, rsetUser.getString(1));
                ResultSet rsetTelephone = ps.executeQuery();

                if (rsetTelephone.next()) {
                    Telephone tp = new Telephone(null, rsetTelephone.getString(2), rsetTelephone.getString(3));
                    User user = new User(rsetUser.getInt(1), rsetUser.getString(2), rsetUser.getString(3), rsetUser.getString(4), rsetUser.getString(5), rsetUser.getString(6), rsetUser.getString(7), rsetUser.getString(8), rsetUser.getString(9), Short.parseShort("1"), tp);
                    tp.setUser(user);
                    request.getSession().invalidate();
                    request.getSession().setAttribute("user", user);

                    boolean flag = BackupDB.backupDB();
                    if (flag) {
                        SaveLog.saveLog(request, "success", "backed up the database");
                    } else {
                        SaveLog.saveLog(request, "error", "failed database back up");
                    }

                    SaveLog.saveLog(request, "success", "user logged in");

                    response.sendRedirect("home.jsp");
                }

            } else {
                SaveLog.saveLog(request, "error", "error user login");
                response.sendRedirect("index.jsp?msg=incorrect");
            }

            con.close();

        } catch (SQLException | NumberFormatException | IOException e) {
            SaveLog.saveLog(request, "error", "error user login");
            out.println("Oops! Something went wrong.\n");
            out.println(e.toString());

            response.sendRedirect("index.jsp?msg=error");
        }
    }
}
