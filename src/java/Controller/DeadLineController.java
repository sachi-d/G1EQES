/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DBConnectionHandler;
import Model.Deadline;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
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
public class DeadLineController extends HttpServlet {

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
        PrintWriter out = response.getWriter();

        try {
            String function = request.getParameter("function");
            if (function != null) {
                if (function.equals("p1")) {
                    Deadline d = getParentDeadlineOne();
                    response.getWriter().write("{isSuccess:" + d.getP1() + "}");
                } else if (function.equals("p2")) {
                    Deadline d = getParentDeadlineTwo();
                    response.getWriter().write("{isSuccess:" + d.getP2() + "}");
                } else if (function.equals("g1")) {
                    Deadline d = getGramaDeadlineOne();
                    response.getWriter().write("{isSuccess:" + d.getG1() + "}");
                } else if (function.equals("g2")) {
                    Deadline d = getGramaDeadlineOne();
                    response.getWriter().write("{isSuccess:" + d.getG2() + "}");
                }
            }
        } catch (Exception e) {
            out.println("Oops! Something went wrong.\n");
        }
    }

    public static Deadline getGramaDeadlineOne() {

        Deadline deadline = new Deadline();

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT g1 FROM deadline WHERE year=YEAR(CURDATE())";
        java.sql.Statement stm;
        try {
            stm = con.createStatement();
            ResultSet res = stm.executeQuery(query);
            while (res.next()) {
                deadline.setG1(res.getDate(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DeadLineController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return deadline;

    }

    public static Deadline getGramaDeadlineTwo() {

        Deadline deadline = new Deadline();

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT g2 FROM deadline WHERE year=YEAR(CURDATE())";
        java.sql.Statement stm;
        try {
            stm = con.createStatement();
            ResultSet res = stm.executeQuery(query);
            while (res.next()) {
                deadline.setG2(res.getDate(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DeadLineController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return deadline;

    }

    public static Deadline getParentDeadlineOne() {

        Deadline deadline = new Deadline();

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT p1 FROM deadline WHERE year=YEAR(CURDATE())";
        java.sql.Statement stm;
        try {
            stm = con.createStatement();
            ResultSet res = stm.executeQuery(query);
            while (res.next()) {
                deadline.setP1(res.getDate(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DeadLineController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return deadline;

    }

    public static Deadline getParentDeadlineTwo() {

        Deadline deadline = new Deadline();

        Connection con = DBConnectionHandler.createConnection();
        String query = "SELECT p2 FROM deadline WHERE year=YEAR(CURDATE())";
        java.sql.Statement stm;
        try {
            stm = con.createStatement();
            ResultSet res = stm.executeQuery(query);
            while (res.next()) {
                deadline.setP2(res.getDate(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DeadLineController.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                System.out.println("Oops! Something went wrong.\n");
            }
        }

        return deadline;

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
