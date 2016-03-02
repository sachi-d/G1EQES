/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

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
public class saveUser extends HttpServlet {

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
        Connection con = DBConnectionHandler.createConnection();

        try {
            String type = request.getParameter("type");
            String fn = request.getParameter("fn");
            String ln = request.getParameter("ln");
            String nic = request.getParameter("nic") + "V";
            String address = request.getParameter("address");
            String mobile = request.getParameter("mobile");
            String landline = request.getParameter("landline");
            String email = request.getParameter("email");
            String un = request.getParameter("un");

            String nationality = request.getParameter("nationality");
            String religion = request.getParameter("religion");
            String grade = request.getParameter("grade");
            String province = request.getParameter("province");
            String district = request.getParameter("district");
            String divisionalsec = request.getParameter("divisionalsec");
            String gramadivision = request.getParameter("gramadivision");
            String school = request.getParameter("school");

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

            con.setAutoCommit(false);
            String query = "INSERT INTO user "
                    + "(username,password,user_level,fname,lname,nic,address,email,flag) "
                    + "VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, un);
            ps.setString(2, pw);
            ps.setString(3, type);
            ps.setString(4, fn);
            ps.setString(5, ln);
            ps.setString(6, nic);
            ps.setString(7, address);
            ps.setString(8, email);
            if (type.equals("Parent")) {
                ps.setString(9, "1");
            } else {
                ps.setString(9, "0");
            }
            ps.executeUpdate();

            String userId = null;

            query = "SELECT MAX(user_id) FROM user";
            ps = con.prepareStatement(query);
            ResultSet rset = ps.executeQuery();
            if (rset.next()) {
                userId = rset.getString(1);
                query = "INSERT INTO telephone "
                        + "VALUES (?,?,?)";
                ps = con.prepareStatement(query);
                ps.setString(1, rset.getString(1));
                ps.setString(2, mobile);
                ps.setString(3, landline);
                ps.executeUpdate();
            }

            if (type.equals("Parent")) {
                query = "INSERT INTO parent "
                        + "(user_id,nationality,religion,province,district,division_secretary,grama_division) "
                        + "VALUES (?,?,?,?,?,?,?)";
                ps = con.prepareStatement(query);
                ps.setString(1, userId);
                ps.setString(2, nationality);
                ps.setString(3, religion);
                ps.setString(4, province);
                ps.setString(5, district);
                ps.setString(6, divisionalsec);
                ps.setString(7, gramadivision);
                ps.executeUpdate();
            } else if (type.equals("Principal")) {
                query = "INSERT INTO principal "
                        + "(user_id,school_id,grade) "
                        + "VALUES (?,?,?)";
                ps = con.prepareStatement(query);
                ps.setString(1, userId);
                ps.setString(2, school);
                ps.setString(3, grade);
                ps.executeUpdate();
            } else if (type.equals("GramaNiladhari")) {
                query = "INSERT INTO grama_niladhari "
                        + "(user_id,grade,division) "
                        + "VALUES (?,?,?)";
                ps = con.prepareStatement(query);
                ps.setString(1, userId);
                ps.setString(2, grade);
                ps.setString(3, gramadivision);
                ps.executeUpdate();
            }

            con.commit();

            response.sendRedirect("index.jsp?msg=success");

        } catch (SQLException | IOException e) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                out.println("Oops! Something went wrong.\n");
                out.println(ex.toString());

                response.sendRedirect("signUp.jsp?msg=error");
            }
            out.println("Oops! Something went wrong.\n");
            out.println(e.toString());

            response.sendRedirect("signUp.jsp?msg=error");
        } finally {
            try {
                con.close();
            } catch (SQLException e) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }
    }
}
