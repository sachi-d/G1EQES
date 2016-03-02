/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.PastPupil;
import Model.Sibling;
import Model.Student;
import Model.User;
import DB.DBConnectionHandler;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dimuthu
 */
public class RegistryController extends HttpServlet {

    private static ReentrantReadWriteLock lock = new ReentrantReadWriteLock();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String status = request.getParameter("status");
            String registry_id = request.getParameter("register_id");
            String student_id = request.getParameter("student_id");
            String function = request.getParameter("function");

            if (function != null) {
                if (function.equals("principal-choice")) {
                    int res = updateRegistryStatus(registry_id, status);
                    response.getWriter().write("{isSuccess:" + res + "}");
                } else if (function.equals("moe-choice")) {
                    int res = updateRegistryStatus(registry_id, status);
                    response.getWriter().write("{isSuccess:" + res + "}");
                } else if (function.equals("parent-choice")) {
                    int res = updateRegistryStatus(registry_id, status);
                    response.getWriter().write("{isSuccess:" + res + "}");
                } else if (function.equals("grama-choice")) {
                    int res = updateRegistryStatus(registry_id, status);
                    response.getWriter().write("{isSuccess:" + res + "}");
                } else if (function.equals("parent-active")) {
                    System.out.println(student_id + " " + registry_id);
                    int res = updateRegistryStatusActive(registry_id, student_id);
                    if (res == -1) {
                        response.getWriter().write("{failed:" + res + "}");
                        System.out.println("A");
                    } else {
                        response.getWriter().write("{isSuccess:" + res + "}");
                        System.out.println("B");
                    }

                }

            }
        }
    }

    public static ArrayList<Object[]> getPrincipalData(User user) {
        ArrayList<Object[]> applicationData = new ArrayList<Object[]>();

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT * FROM registry r, student s, parent p, user u,school sc, principal pl WHERE r.student_id=s.student_id AND p.parent_id=s.parent_id AND u.user_id=p.user_id AND sc.school_id=r.school_id AND pl.school_id=r.school_id AND pl.user_id=? AND (r.registered_status='calculated' OR r.registered_status='int-selected' OR r.registered_status LIKE 'int-rejected%' OR r.registered_status LIKE 'failed%' OR r.registered_status='passed' OR r.registered_status='active')";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, String.valueOf(user.getUserId()));
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                PastPupil p = getPastPupil(resultSet.getString(1));
                ArrayList<Sibling> siblingList = getSibilings(resultSet.getString(1));
                String[] data = {resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7), resultSet.getString(8), resultSet.getString(9), resultSet.getString(10), resultSet.getString(11), resultSet.getString(12), resultSet.getString(13), resultSet.getString(14), resultSet.getString(15), resultSet.getString(16), resultSet.getString(17), resultSet.getString(18), resultSet.getString(19), resultSet.getString(20), resultSet.getString(21), resultSet.getString(22), resultSet.getString(23), resultSet.getString(24), resultSet.getString(25), resultSet.getString(26), resultSet.getString(27), resultSet.getString(28), resultSet.getString(29), resultSet.getString(30), resultSet.getString(31), resultSet.getString(32), resultSet.getString(33), resultSet.getString(34), resultSet.getString(35), resultSet.getString(36), resultSet.getString(37), resultSet.getString(38), resultSet.getString(39), resultSet.getString(40), resultSet.getString(41), resultSet.getString(42), resultSet.getString(43), resultSet.getString(44), resultSet.getString(45)};
                Object[] allData = {data, p, siblingList};
                applicationData.add(allData);
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return applicationData;
    }

    public static ArrayList<Object[]> getGramaData(User user) {
        ArrayList<Object[]> applicationData = new ArrayList<Object[]>();

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT * FROM registry r, student s, parent p, user u,school sc, principal pl, grama_niladhari gn WHERE r.student_id=s.student_id AND p.parent_id=s.parent_id AND u.user_id=p.user_id AND sc.school_id=r.school_id AND pl.school_id=r.school_id AND gn.user_id=? AND gn.division=p.grama_division";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, String.valueOf(user.getUserId()));
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                PastPupil p = getPastPupil(resultSet.getString(1));
                ArrayList<Sibling> siblingList = getSibilings(resultSet.getString(1));
                String[] data = {resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7), resultSet.getString(8), resultSet.getString(9), resultSet.getString(10), resultSet.getString(11), resultSet.getString(12), resultSet.getString(13), resultSet.getString(14), resultSet.getString(15), resultSet.getString(16), resultSet.getString(17), resultSet.getString(18), resultSet.getString(19), resultSet.getString(20), resultSet.getString(21), resultSet.getString(22), resultSet.getString(23), resultSet.getString(24), resultSet.getString(25), resultSet.getString(26), resultSet.getString(27), resultSet.getString(28), resultSet.getString(29), resultSet.getString(30), resultSet.getString(31), resultSet.getString(32), resultSet.getString(33), resultSet.getString(34), resultSet.getString(35), resultSet.getString(36), resultSet.getString(37), resultSet.getString(38), resultSet.getString(39), resultSet.getString(40), resultSet.getString(41), resultSet.getString(42), resultSet.getString(43), resultSet.getString(44), resultSet.getString(45)};
                Object[] allData = {data, p, siblingList};
                applicationData.add(allData);
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return applicationData;
    }

    public static ArrayList<Object[]> getMOEData(String status) {
        ArrayList<Object[]> applicationData = new ArrayList<Object[]>();

        Connection con = DBConnectionHandler.createConnection();
        String query = "";
        if (status.equals("approved")) {
            query = "SELECT * FROM registry r, student s, parent p, user u,school sc WHERE r.student_id=s.student_id AND p.parent_id=s.parent_id AND u.user_id=p.user_id AND sc.school_id=r.school_id AND (r.registered_status='approved' OR r.registered_status='passed' OR r.registered_status='int-selected' OR r.registered_status='active' OR r.registered_status='calculated')";
        } else if (status.equals("rejected")) {
            query = "SELECT * FROM registry r, student s, parent p, user u,school sc WHERE r.student_id=s.student_id AND p.parent_id=s.parent_id AND u.user_id=p.user_id AND sc.school_id=r.school_id AND (r.registered_status LIKE 'rejected%' OR r.registered_status LIKE 'failed%' OR r.registered_status LIKE 'int-rejected%' OR r.registered_status LIKE 'inactive%')";
        } else if (status.equals("pending")) {
            query = "SELECT * FROM registry r, student s, parent p, user u,school sc WHERE r.student_id=s.student_id AND p.parent_id=s.parent_id AND u.user_id=p.user_id AND sc.school_id=r.school_id AND r.registered_status LIKE 'pending%'";
        }

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                PastPupil p = getPastPupil(resultSet.getString(1));
                ArrayList<Sibling> siblingList = getSibilings(resultSet.getString(1));
                String[] data = {resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7), resultSet.getString(8), resultSet.getString(9), resultSet.getString(10), resultSet.getString(11), resultSet.getString(12), resultSet.getString(13), resultSet.getString(14), resultSet.getString(15), resultSet.getString(16), resultSet.getString(17), resultSet.getString(18), resultSet.getString(19), resultSet.getString(20), resultSet.getString(21), resultSet.getString(22), resultSet.getString(23), resultSet.getString(24), resultSet.getString(25), resultSet.getString(26), resultSet.getString(27), resultSet.getString(28), resultSet.getString(29), resultSet.getString(30), resultSet.getString(31), resultSet.getString(32), resultSet.getString(33), resultSet.getString(34), resultSet.getString(35), resultSet.getString(36), resultSet.getString(37), resultSet.getString(38), resultSet.getString(39), resultSet.getString(40), resultSet.getString(41), resultSet.getString(42), resultSet.getString(43), resultSet.getString(44), resultSet.getString(45)};
                Object[] allData = {data, p, siblingList};
                applicationData.add(allData);
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return applicationData;
    }

    public static ArrayList<Object[]> getParentData(User user) {
        ArrayList<Object[]> applicationData = new ArrayList<Object[]>();

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT * FROM registry r, student s, parent p, user u,school sc, principal pl WHERE r.student_id=s.student_id AND p.parent_id=s.parent_id AND u.user_id=p.user_id AND sc.school_id=r.school_id AND pl.school_id=r.school_id AND p.user_id=?";

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, String.valueOf(user.getUserId()));
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                PastPupil p = getPastPupil(resultSet.getString(1));
                ArrayList<Sibling> siblingList = getSibilings(resultSet.getString(1));
                String[] data = {resultSet.getString(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5), resultSet.getString(6), resultSet.getString(7), resultSet.getString(8), resultSet.getString(9), resultSet.getString(10), resultSet.getString(11), resultSet.getString(12), resultSet.getString(13), resultSet.getString(14), resultSet.getString(15), resultSet.getString(16), resultSet.getString(17), resultSet.getString(18), resultSet.getString(19), resultSet.getString(20), resultSet.getString(21), resultSet.getString(22), resultSet.getString(23), resultSet.getString(24), resultSet.getString(25), resultSet.getString(26), resultSet.getString(27), resultSet.getString(28), resultSet.getString(29), resultSet.getString(30), resultSet.getString(31), resultSet.getString(32), resultSet.getString(33), resultSet.getString(34), resultSet.getString(35), resultSet.getString(36), resultSet.getString(37), resultSet.getString(38), resultSet.getString(39), resultSet.getString(40), resultSet.getString(41), resultSet.getString(42), resultSet.getString(43), resultSet.getString(44), resultSet.getString(45)};
                Object[] allData = {data, p, siblingList};
                applicationData.add(allData);
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return applicationData;
    }

    public int updateRegistryStatus(String registryId, String status) {
        Connection con = DBConnectionHandler.createConnection();
        try {
            lock.writeLock().lock();
            String query = "UPDATE registry SET registered_status='" + status + "' WHERE registry_id='" + registryId + "'";
            java.sql.Statement stm = con.createStatement();
            int res = stm.executeUpdate(query);
            return res;
        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                lock.writeLock().unlock();
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return -1;
    }

    public static PastPupil getPastPupil(String studentId) {

        PastPupil p = new PastPupil();
        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT * FROM past_pupil p, student s WHERE p.pp_id=s.student_id AND p.student_id=?";

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, studentId);
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                Student s = new Student();
                Student pp = new Student();
                pp.setFullName(resultSet.getString(9));
                s.setStudentId(Integer.parseInt(resultSet.getString(2)));
                p = new PastPupil(Integer.parseInt(resultSet.getString(1)), s, pp, resultSet.getInt(3), resultSet.getInt(4), resultSet.getInt(5), resultSet.getInt(6));
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return p;
    }

    public static ArrayList<Sibling> getSibilings(String studentId) {

        ArrayList<Sibling> siblingList = new ArrayList<Sibling>();
        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT * FROM sibling sb, student s WHERE sb.sibling_id=s.student_id AND sb.student_id=?";

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, studentId);
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                Student s = new Student();
                Student sb = new Student();
                sb.setFullName(resultSet.getString(7));
                s.setStudentId(Integer.parseInt(resultSet.getString(2)));
                Sibling sibling = new Sibling(Integer.parseInt(resultSet.getString(1)), s, sb, resultSet.getString(3), resultSet.getString(4));
                siblingList.add(sibling);
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return siblingList;
    }

    public int updateRegistryStatusActive(String registryId, String studentId) {

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT count(registry_id) FROM registry WHERE registered_status='active' AND student_id=?";

        PreparedStatement ps;
        try {
            ps = con.prepareStatement(query);
            ps.setString(1, studentId);
            ResultSet resultSet = ps.executeQuery();

            int total = 0;

            while (resultSet.next()) {
                total = resultSet.getInt(1);
                System.out.println(total);
            }
            if (total == 0) {
                query = "UPDATE registry SET registered_status='active' WHERE registry_id='" + registryId + "'";
                int res = ps.executeUpdate(query);
                System.out.println(registryId);
                return res;
            } else {
                return -1;
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegistryController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return -1;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
