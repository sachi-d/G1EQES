/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DBConnectionHandler;
import Model.Parent;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Chanaka
 */
public class saveChild extends HttpServlet {

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
            //PARENT = APPLICANT
            User usr = (User) request.getSession().getAttribute("user");
            Parent parent = DBDataList.getParent(usr.getUserId());
            String parent_id = String.valueOf(parent.getParentId());

            //CHILD DETAILS
            String fullname = request.getParameter("fullname");
            String initials = request.getParameter("initials");
            String lname = request.getParameter("lname");
            String sex = request.getParameter("sex");
            String religion = request.getParameter("religion");
            String medium = request.getParameter("medium");
            String dob = request.getParameter("dob");

            con.setAutoCommit(false);
            String query = "INSERT INTO student"
                    + " (initials,full_name,last_name,dob,sex,religion,medium,flag,parent_id)"
                    + " VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, initials);
            ps.setString(2, fullname);
            ps.setString(3, lname);
            ps.setString(4, dob);
            ps.setString(5, sex);
            ps.setString(6, religion);
            ps.setString(7, medium);
            ps.setString(8, "1");
            ps.setString(9, parent_id);
            ps.executeUpdate();

            con.commit();
            con.close();

            SaveLog.saveLog(request, "success", "registered child");

            response.sendRedirect("registerChild.jsp?msg=success");

        } catch (SQLException | IOException e) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                out.println("ROLLBACK EXCEPTION");
                out.println("Oops! Something went wrong.\n");
                out.println(ex.toString());

                response.sendRedirect("registerChild.jsp?msg=error");
            }
            out.println("Oops! Something went wrong.\n");
            out.println(e.toString());

            SaveLog.saveLog(request, "error", "failed registering child");

            response.sendRedirect("registerChild.jsp?msg=error");
        }
    }
}
