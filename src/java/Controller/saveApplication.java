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
public class saveApplication extends HttpServlet {

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

            //SCHOOL 
            String school_id = request.getParameter("school");
            //CHILD DETAILS
//            String fullname = request.getParameter("fullname");
//            String initials = request.getParameter("initials");
//            String lname = request.getParameter("lname");
//            String sex = request.getParameter("sex");
//            String religion = request.getParameter("religion");
//            String medium = request.getParameter("medium");
//            String dob = request.getParameter("dob");
            String childID = request.getParameter("child");

            //PARENT DETAILS
            String distance = request.getParameter("distance");

            //ADDITIONAL INFO-------------------------------------------------
            //PAST PUPIL REFERENCE
            String ppid = request.getParameter("past_pupil_id");
            String ppfg = request.getParameter("past_pupil_from_grade");
            String pptg = request.getParameter("past_pupil_to_grade");
            String ppfy = request.getParameter("past_pupil_from_year");
            String ppty = request.getParameter("past_pupil_from_year");

            //SIBLING REFERENCE
            String sib1id = request.getParameter("sibling_1_id");
            String sib1grade = request.getParameter("sibling_1_grade");
            String sib2id = request.getParameter("sibling_2_id");
            String sib2grade = request.getParameter("sibling_2_grade");
            String sib3id = request.getParameter("sibling_3_id");
            String sib3grade = request.getParameter("sibling_3_grade");

            con.setAutoCommit(false);

            String studentId = childID;

            Date d = new Date();
            SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
            String date = sf.format(d);

            String query = "INSERT INTO registry "
                    + "(student_id,school_id,date,distance,pastpupil_score,sibling_score,distance_score,registered_status) "
                    + "VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, studentId);
            ps.setString(2, school_id);
            ps.setString(3, date);
            ps.setString(4, distance);
            ps.setInt(5, 0);
            ps.setInt(6, 0);
            ps.setInt(7, 0);
            ps.setString(8, "pending");
            ps.executeUpdate();

            //check if past pupil reference is entered
            if (!ppid.equals("")) {
                query = "SELECT student_id FROM student WHERE student_id = " + ppid;
                ps = con.prepareStatement(query);
                ResultSet rset = ps.executeQuery();
                //if there is a record present in the database with the reference id
                if (rset.next()) {
                    query = "INSERT INTO past_pupil "
                            + "(pp_id,student_id,to_grade,from_grade,to_year,from_year)"
                            + "VALUES (?,?,?,?,?,?)";
                    ps = con.prepareStatement(query);
                    ps.setString(1, ppid);
                    ps.setString(2, studentId);
                    ps.setString(3, pptg);
                    ps.setString(4, ppfg);
                    ps.setString(5, ppty);
                    ps.setString(6, ppfy);
                    ps.executeUpdate();
                }
            }

            //check if sibling ref 1 is entered
            if (!sib1id.equals("")) {
                query = "SELECT student_id FROM student WHERE student_id =" + sib1id;
                ps = con.prepareStatement(query);
                ResultSet rset = ps.executeQuery();
                //if there is a record present in the database with the reference id
                if (rset.next()) {
                    query = "INSERT INTO sibling "
                            + "(sibling_id,student_id,current_grade)"
                            + " VALUES (?,?,?)";
                    ps = con.prepareStatement(query);
                    ps.setString(1, sib1id);
                    ps.setString(2, studentId);
                    ps.setString(3, sib1grade);
                    ps.executeUpdate();
                }
            }
            if (!sib2id.equals("")) {
                query = "SELECT student_id FROM student WHERE student_id =" + sib2id;
                ps = con.prepareStatement(query);
                ResultSet rset = ps.executeQuery();
                if (rset.next()) {
                    query = "INSERT INTO sibling "
                            + "(student_id,current_grade)"
                            + "VALUES (?,?)";
                    ps = con.prepareStatement(query);
                    ps.setString(1, sib2id);
                    ps.setString(2, sib2grade);
                    ps.executeUpdate();
                }
            }
            if (!sib3id.equals("")) {
                query = "SELECT student_id FROM student WHERE student_id =" + sib3id;
                ps = con.prepareStatement(query);
                ResultSet rset = ps.executeQuery();
                if (rset.next()) {
                    query = "INSERT INTO sibling "
                            + "(student_id,current_grade)"
                            + " VALUES (?,?)";
                    ps = con.prepareStatement(query);
                    ps.setString(1, sib3id);
                    ps.setString(2, sib3grade);
                    ps.executeUpdate();
                }
            }
            
            con.commit();
            con.close();

            SaveLog.saveLog(request, "success", "registered application");

            response.sendRedirect("registerApplication.jsp?msg=success");

        } catch (SQLException | IOException e) {
            try {
                con.rollback();
            } catch (SQLException ex) {
                out.println("ROLLBACK EXCEPTION");
                out.println("Oops! Something went wrong.\n");
                out.println(ex.toString());

                response.sendRedirect("registerApplication.jsp?msg=error");
            }
            out.println("Oops! Something went wrong.\n");
            out.println(e.toString());

            SaveLog.saveLog(request, "error", "failed registering application");

            response.sendRedirect("registerApplication.jsp?msg=error");
        }
    }
}
