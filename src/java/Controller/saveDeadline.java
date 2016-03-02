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
public class saveDeadline extends HttpServlet {

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
            String year = request.getParameter("year");
            String p1 = request.getParameter("p1");
            String g1 = request.getParameter("g1");
            String p2 = request.getParameter("p2");
            String g2 = request.getParameter("g2");

            con.setAutoCommit(false);
            String query = "INSERT INTO deadline "
                    + "(year,p1,g1,p2,g2) "
                    + "VALUES (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, year);
            ps.setString(2, p1);
            ps.setString(3, g1);
            ps.setString(4, p2);
            ps.setString(5, g2);
            ps.executeUpdate();

            con.commit();
            con.close();

            SaveLog.saveLog(request, "success", "deadline saved");

            response.sendRedirect("adminPanel.jsp?msg=successDeadline");

        } catch (SQLException | IOException e) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                out.println("Oops! Something went wrong.\n");
                out.println(ex.toString());

                SaveLog.saveLog(request, "error", "failed saving deadlines");

                response.sendRedirect("adminPanel.jsp?msg=errorDeadline");
            }
            out.println("Oops! Something went wrong.\n");
            out.println(e.toString());

            SaveLog.saveLog(request, "error", "failed saving deadlines");

            response.sendRedirect("adminPanel.jsp?msg=errorDeadline");
        }
    }
}
