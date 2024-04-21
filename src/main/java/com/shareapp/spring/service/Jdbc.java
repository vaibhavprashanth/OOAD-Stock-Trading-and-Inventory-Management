package com.shareapp.spring.service;

import java.sql.*;

public class Jdbc {
    public static Connection JdbcConnect() throws SQLException {

        String url = "jdbc:mysql://localhost:3306/ooad";
        String usn = "springuser";
        String pw="password";
        return  DriverManager.getConnection(url, usn, pw);

    }
}
