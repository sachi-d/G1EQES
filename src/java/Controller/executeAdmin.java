/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DBConnectionHandler;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
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
public class executeAdmin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        User user = (User) request.getSession().getAttribute("user");
        if (user.getUserLevel().equals("Admin")) {
            try {
                String para = request.getParameter("para");
                if (para.equals("status")) {
                    String userId = request.getParameter("user");
                    Connection con = DBConnectionHandler.createConnection();
                    String query = "UPDATE user SET flag=1 WHERE user_id=?";
                    PreparedStatement ps = con.prepareStatement(query);
                    ps.setString(1, userId);
                    ps.executeUpdate();

                    response.sendRedirect("viewUser.jsp?msg=successStatus");
                }
            } catch (Exception e) {
                SaveLog.saveLog(request, "error", "error admin panel");
                out.println("Oops! Something went wrong.\n");
                out.println(e.toString());

                response.sendRedirect("viewUser.jsp?msg=errorStatus");
            }
        } else {
            response.sendRedirect("401.jsp");
        }
    }

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
            String para = request.getParameter("para");
            if (para.equals("backup")) {
                try {
                    boolean flag = BackupDB.backupDB();
                    if (flag) {
                        SaveLog.saveLog(request, "success", "backed up the database");
                    } else {
                        SaveLog.saveLog(request, "error", "failed database back up");
                    }

                    response.sendRedirect("adminPanel.jsp?msg=successBackup");

                } catch (Exception e) {
                    SaveLog.saveLog(request, "error", "failed database back up");
                    out.println("Oops! Something went wrong.\n");
                    out.println(e.toString());

                    response.sendRedirect("adminPanel.jsp?msg=errorBackup");
                }
            } else if (para.equals("calculate")) {
                try {
                    Connection con = DBConnectionHandler.createConnection();
                    String query = "SELECT * FROM registry WHERE registered_status='approved'";
                    PreparedStatement ps = con.prepareStatement(query);
                    ResultSet rsetReg = ps.executeQuery();

                    boolean pp = false;
                    boolean sib = false;
                    int registryId = -1;
                    int distance_score = 0;
                    int stdID = -1;
                    int schoolID = -1;
                    int distance = 0;
                    while (rsetReg.next()) {
                        registryId = rsetReg.getInt(1);
                        stdID = rsetReg.getInt(2);
                        schoolID = rsetReg.getInt(3);
                        distance = rsetReg.getInt(5);
                        pp = confirmPastPupil(stdID, schoolID);

                        if (pp) {
                            String query1 = "UPDATE registry SET pastpupil_score='30' WHERE registry_id=" + registryId + "";
                            PreparedStatement ps1 = con.prepareStatement(query1);
                            int rs = ps1.executeUpdate();
                        }

                        sib = confirmSibling(stdID, schoolID);

                        if (sib) {
                            String query1 = "UPDATE registry SET sibling_score='20' WHERE registry_id=" + registryId + "";
                            PreparedStatement ps1 = con.prepareStatement(query1);
                            int rs = ps1.executeUpdate();
                        }
                        distance_score = getDistanceScore(distance);
                        String query2 = "UPDATE registry SET distance_score=" + distance_score + ", registered_status='calculated' WHERE registry_id=" + registryId + "";
                        PreparedStatement ps2 = con.prepareStatement(query2);
                        int rs = ps2.executeUpdate();

                    }
                    response.sendRedirect("adminPanel.jsp?msg=successCalculate");
                } catch (SQLException | IOException e) {
                    SaveLog.saveLog(request, "error", "failed calculate marks");
                    out.println("Oops! Something went wrong.\n");
                    out.println(e.toString());

                    response.sendRedirect("adminPanel.jsp?msg=errorCalculate");
                }
            }
        } catch (NumberFormatException e) {
            SaveLog.saveLog(request, "error", "error admin panel");
            out.println("Oops! Something went wrong.\n");
            out.println(e.toString());

            response.sendRedirect("adminPanel.jsp?msg=error");
        }
    }

    public static boolean confirmPastPupil(int stdID, int schoolID) {
        try {

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT pp_id FROM past_pupil WHERE student_id=" + stdID + "";

            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rset = ps.executeQuery();
            int pp_id = 0;
            while (rset.next()) {
                pp_id = rset.getInt(1);
            }
            String query1 = "SELECT school_id FROM registry WHERE student_id=" + pp_id + "";
            PreparedStatement ps1 = con.prepareStatement(query1);
            ResultSet rset1 = ps1.executeQuery();
            int sch_id = 0;
            while (rset1.next()) {
                sch_id = rset1.getInt(1);
                if (sch_id == schoolID) {
                    return true;
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    public static boolean confirmSibling(int stdID, int schoolID) {
        try {
            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT sibling_id FROM sibling WHERE student_id=" + stdID + "";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rset = ps.executeQuery();
            int sib_id = 0;
            while (rset.next()) {
                sib_id = rset.getInt(1);
            }
            String query1 = "SELECT school_id FROM registry WHERE student_id=" + sib_id + "";
            PreparedStatement ps1 = con.prepareStatement(query1);
            ResultSet rset1 = ps1.executeQuery();
            int sch_id = 0;
            while (rset1.next()) {
                sch_id = rset1.getInt(1);
                if (sch_id == schoolID) {
                    return true;
                }
            }

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return false;
    }

    public static int getDistanceScore(int distance) {
        int dis_score = 50;
        if (distance >= 100) {
            dis_score -= 35;
        } else if (distance >= 50) {
            dis_score -= 25;
        } else if (distance >= 25) {
            dis_score -= 15;
        } else {
            dis_score -= 5;
        }
        return dis_score;
    }

}
