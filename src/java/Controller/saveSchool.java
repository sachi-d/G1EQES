/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DBConnectionHandler;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chanaka
 */
public class saveSchool extends HttpServlet {

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
            String category = request.getParameter("category");
            String name = request.getParameter("name");
            String adddress = request.getParameter("address");
            String province = request.getParameter("province");
            String district = request.getParameter("district");
            String contact = request.getParameter("contact");
            con.setAutoCommit(false);

            String query = "INSERT INTO school "
                    + "(name,address,category,district,province,contact_no,flag) "
                    + "VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, adddress);
            ps.setString(3, category);
            ps.setString(4, district);
            ps.setString(5, province);
            ps.setString(6, contact);
            ps.setString(7, "1");
            ps.executeUpdate();

            con.commit();
            con.close();

            response.sendRedirect("registerSchool.jsp?msg=success");

        } catch (SQLException | IOException e) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                out.println("Oops! Something went wrong.\n");
                out.println(ex.toString());

                response.sendRedirect("registerSchool.jsp?msg=error");
            }
            out.println("Oops! Something went wrong.\n");
            out.println(e.toString());

            response.sendRedirect("registerSchool.jsp?msg=error");
        }
    }
}
