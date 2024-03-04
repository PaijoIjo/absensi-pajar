package aplikasi_utama;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class koneksi {
    public static Connection getConnection(){
    Connection Koneksi = null;
    String url = "jdbc:mysql://localhost:3306/aplikasisiswa";
    String user = "root";
    String password = "";
    try{
        Koneksi = DriverManager.getConnection(url, user, password);
}       catch (SQLException e) {
        System.out.println(e);
}
        return Koneksi;
}
    
}
