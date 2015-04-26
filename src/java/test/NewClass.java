package test;


import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author user
 */
public class NewClass {

    public static void main(String[] args) {

        String db_url = "jdbc:jtds:sqlserver://w2ksa.cs.cityu.edu.hk:1433/aiad001_db;";
        String user = "aiad001";
        String pwd = "aiad001";
        String str_q = "SELECT * FROM \"User\"";
        try {
            Class.forName("net.sourceforge.jtds.jdbc.Driver");
            Connection conn = DriverManager.getConnection(db_url, user, pwd);
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(str_q);
            while(rs.next()){
                System.out.printf("{%d %20s %s %s}\n", rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
