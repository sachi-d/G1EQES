/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.DBConnectionHandler;
import Model.Backup;
import Model.Deadline;
import Model.District;
import Model.DivisionSec;
import Model.GramaNiladhari;
import Model.GramaNiladhariDiv;
import Model.Log;
import Model.Parent;
import Model.Principal;
import Model.Province;
import Model.School;
import Model.Student;
import Model.Telephone;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Chanaka
 */
public class DBDataList {

    public static ArrayList getChildList(Parent parent) {
        try {
            ArrayList<Student> arr = new ArrayList<Student>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM student WHERE parent_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, parent.getParentId());
            ResultSet rsetStudent = ps.executeQuery();

            while (rsetStudent.next()) {
                Student student = new Student();
                student.setStudentId(rsetStudent.getInt(1));
                student.setFullName(rsetStudent.getString(3));
                arr.add(student);
            }
            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getBackupList() {
        try {
            ArrayList<Backup> arr = new ArrayList<Backup>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM backup";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rsetBackup = ps.executeQuery();

            while (rsetBackup.next()) {
                Backup log = new Backup(rsetBackup.getInt(1), rsetBackup.getTimestamp(2), rsetBackup.getString(3));
                arr.add(log);
            }
            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getLogList() {
        try {
            ArrayList<Log> arr = new ArrayList<Log>();
            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM log";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rsetLog = ps.executeQuery();

            while (rsetLog.next()) {
                Log log = new Log(rsetLog.getInt(1), rsetLog.getInt(2), rsetLog.getTimestamp(3), rsetLog.getString(4), rsetLog.getString(5), rsetLog.getString(6));
                arr.add(log);
            }
            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getProvinceList() {
        try {
            ArrayList<Province> arr = new ArrayList<Province>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM province WHERE status=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "1");
            ResultSet rsetProvince = ps.executeQuery();

            while (rsetProvince.next()) {
                Province province = new Province(rsetProvince.getInt(1), rsetProvince.getInt(2), rsetProvince.getString(3), rsetProvince.getShort(4));
                arr.add(province);
            }
            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getDistrictList() {
        try {
            ArrayList<District> arr = new ArrayList<District>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM district WHERE status=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "1");
            ResultSet rsetDistrict = ps.executeQuery();

            while (rsetDistrict.next()) {
                District district = new District(rsetDistrict.getInt(1), rsetDistrict.getInt(2), rsetDistrict.getInt(3), rsetDistrict.getString(4), rsetDistrict.getShort(5));
                arr.add(district);
            }
            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getDivisionSecList() {
        try {
            ArrayList<DivisionSec> arr = new ArrayList<DivisionSec>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM division_sec WHERE status=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "1");
            ResultSet rsetDivisonSec = ps.executeQuery();

            while (rsetDivisonSec.next()) {
                DivisionSec divisionSec = new DivisionSec(rsetDivisonSec.getInt(1), rsetDivisonSec.getInt(2), rsetDivisonSec.getInt(3), rsetDivisonSec.getString(4), rsetDivisonSec.getShort(5));
                arr.add(divisionSec);
            }
            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getGramaDivList() {
        try {
            ArrayList<GramaNiladhariDiv> arr = new ArrayList<GramaNiladhariDiv>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM grama_div WHERE status=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "1");
            ResultSet rsetDivisonSec = ps.executeQuery();

            while (rsetDivisonSec.next()) {
                GramaNiladhariDiv gramaDiv = new GramaNiladhariDiv(rsetDivisonSec.getInt(1), rsetDivisonSec.getInt(2), rsetDivisonSec.getInt(3), rsetDivisonSec.getString(4), rsetDivisonSec.getShort(5));
                arr.add(gramaDiv);
            }
            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static Parent getParent(int user_id) {
        try {
            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM parent WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, user_id);
            ResultSet rset = ps.executeQuery();

            Parent parent = null;

            if (rset.next()) {
                parent = new Parent(rset.getInt(1), null, rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8));
            }

            return parent;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getParentList() {
        try {
            ArrayList<Parent> arr = new ArrayList<Parent>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM parent";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rset = ps.executeQuery();

            while (rset.next()) {
                Parent parent = new Parent(rset.getInt(1), null, rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8));
                query = "SELECT * FROM user WHERE user_id=?";
                ps = con.prepareStatement(query);
                ps.setString(1, rset.getString(2));
                ResultSet rsetUser = ps.executeQuery();

                if (rsetUser.next()) {
                    query = "SELECT * FROM telephone WHERE user_id=?";
                    ps = con.prepareStatement(query);
                    ps.setString(1, rsetUser.getString(1));
                    ResultSet rsetTelephone = ps.executeQuery();

                    if (rsetTelephone.next()) {
                        Telephone tp = new Telephone(null, rsetTelephone.getString(2), rsetTelephone.getString(3));
                        User user = new User(rsetUser.getInt(1), rsetUser.getString(2), rsetUser.getString(3), rsetUser.getString(4), rsetUser.getString(5), rsetUser.getString(6), rsetUser.getString(7), rsetUser.getString(8), rsetUser.getString(9), rsetUser.getShort(10), tp);
                        tp.setUser(user);
                        parent.setUser(user);
                    }
                }
                arr.add(parent);
            }

            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getGramaNiladhariList() {
        try {
            ArrayList<GramaNiladhari> arr = new ArrayList<GramaNiladhari>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM grama_niladhari";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rset = ps.executeQuery();

            while (rset.next()) {
                GramaNiladhari grama = new GramaNiladhari(rset.getInt(1), null, rset.getString(3), rset.getString(4));
                query = "SELECT * FROM user WHERE user_id=?";
                ps = con.prepareStatement(query);
                ps.setString(1, rset.getString(2));
                ResultSet rsetUser = ps.executeQuery();

                if (rsetUser.next()) {
                    query = "SELECT * FROM telephone WHERE user_id=?";
                    ps = con.prepareStatement(query);
                    ps.setString(1, rsetUser.getString(1));
                    ResultSet rsetTelephone = ps.executeQuery();

                    if (rsetTelephone.next()) {
                        Telephone tp = new Telephone(null, rsetTelephone.getString(2), rsetTelephone.getString(3));
                        User user = new User(rsetUser.getInt(1), rsetUser.getString(2), rsetUser.getString(3), rsetUser.getString(4), rsetUser.getString(5), rsetUser.getString(6), rsetUser.getString(7), rsetUser.getString(8), rsetUser.getString(9), rsetUser.getShort(10), tp);
                        tp.setUser(user);
                        grama.setUser(user);
                    }
                }
                arr.add(grama);
            }

            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getPrincipalList() {
        try {
            ArrayList<Principal> arr = new ArrayList<Principal>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM principal";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rset = ps.executeQuery();

            while (rset.next()) {
                query = "SELECT * FROM school WHERE school_id=?";
                ps = con.prepareStatement(query);
                ps.setString(1, rset.getString(3));
                ResultSet rsetSchool = ps.executeQuery();

                if (rsetSchool.next()) {
                    School school = new School(rsetSchool.getInt(1), rsetSchool.getString(2), rsetSchool.getString(3), rsetSchool.getString(4), rsetSchool.getString(5), rsetSchool.getString(6), rsetSchool.getString(7), Short.parseShort("1"));
                    Principal principal = new Principal(rset.getInt(1), null, school, rset.getString(4));
                    query = "SELECT * FROM user WHERE user_id=?";
                    ps = con.prepareStatement(query);
                    ps.setString(1, rset.getString(2));
                    ResultSet rsetUser = ps.executeQuery();

                    if (rsetUser.next()) {
                        query = "SELECT * FROM telephone WHERE user_id=?";
                        ps = con.prepareStatement(query);
                        ps.setString(1, rsetUser.getString(1));
                        ResultSet rsetTelephone = ps.executeQuery();

                        if (rsetTelephone.next()) {
                            Telephone tp = new Telephone(null, rsetTelephone.getString(2), rsetTelephone.getString(3));
                            User user = new User(rsetUser.getInt(1), rsetUser.getString(2), rsetUser.getString(3), rsetUser.getString(4), rsetUser.getString(5), rsetUser.getString(6), rsetUser.getString(7), rsetUser.getString(8), rsetUser.getString(9),  rsetUser.getShort(10), tp);
                            tp.setUser(user);
                            principal.setUser(user);
                        }
                    }
                    arr.add(principal);
                }
            }

            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getAdminList() {
        try {
            ArrayList<User> arr = new ArrayList<User>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM user WHERE user_level=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "Admin");
            ResultSet rsetUser = ps.executeQuery();

            while (rsetUser.next()) {
                query = "SELECT * FROM telephone WHERE user_id=?";
                ps = con.prepareStatement(query);
                ps.setString(1, rsetUser.getString(1));
                ResultSet rsetTelephone = ps.executeQuery();

                if (rsetTelephone.next()) {
                    Telephone tp = new Telephone(null, rsetTelephone.getString(2), rsetTelephone.getString(3));
                    User user = new User(rsetUser.getInt(1), rsetUser.getString(2), rsetUser.getString(3), rsetUser.getString(4), rsetUser.getString(5), rsetUser.getString(6), rsetUser.getString(7), rsetUser.getString(8), rsetUser.getString(9),  rsetUser.getShort(10), tp);
                    tp.setUser(user);

                    arr.add(user);
                }
            }

            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getSchoolList() {
        try {
            ArrayList<School> arr = new ArrayList<School>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM school WHERE flag=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, "1");
            ResultSet rsetSchool = ps.executeQuery();

            while (rsetSchool.next()) {
                School school = new School(rsetSchool.getInt(1), rsetSchool.getString(2), rsetSchool.getString(3), rsetSchool.getString(4), rsetSchool.getString(5), rsetSchool.getString(6), rsetSchool.getString(7), Short.parseShort("1"));
                arr.add(school);
            }

            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public static ArrayList getDeadlineList() {
        try {
            ArrayList<Deadline> arr = new ArrayList<Deadline>();

            Connection con = DBConnectionHandler.createConnection();
            String query = "SELECT * FROM deadline";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rsetDeadline = ps.executeQuery();

            while (rsetDeadline.next()) {
                Deadline deadline = new Deadline(rsetDeadline.getInt(1), rsetDeadline.getString(2), rsetDeadline.getDate(3), rsetDeadline.getDate(4), rsetDeadline.getDate(5), rsetDeadline.getDate(6));
                arr.add(deadline);
            }

            return arr;

        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
}
