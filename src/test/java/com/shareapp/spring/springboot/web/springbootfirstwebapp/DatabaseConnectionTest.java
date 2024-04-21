package com.shareapp.spring.springboot.web.springbootfirstwebapp;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.SQLException;

@SpringBootTest
@ExtendWith(SpringExtension.class)
public class DatabaseConnectionTest {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Test
    public void testDatabaseConnection() {
        try {
            // Get connection from the DataSource
            Connection connection = dataSource.getConnection();

            // Get database metadata
            DatabaseMetaData metaData = connection.getMetaData();
            System.out.println("Connected to database: " + metaData.getDatabaseProductName());

            // Close the connection
            connection.close();
        } catch (SQLException e) {
            System.err.println("Error connecting to the database: " + e.getMessage());
            e.printStackTrace();
        }

        // Test JdbcTemplate
        System.out.println("Testing JdbcTemplate...");
    }
}
