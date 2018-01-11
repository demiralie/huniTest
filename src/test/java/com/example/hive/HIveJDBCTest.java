package com.example.hive;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class HIveJDBCTest {


	@Test
	public void test() throws ClassNotFoundException, SQLException {
		Class.forName("org.apache.hive.jdbc.HiveDriver");
		Connection conn = DriverManager.getConnection("jdbc:hive2://localhost:10000","","");
		Statement stmt = conn.createStatement();
		System.out.println(conn);
		
		ResultSet rs = stmt.executeQuery("select * from ontime limit 20");
		
		while(rs.next()) {
			System.out.println(rs.getInt(1) + ", " + rs.getInt(2) + ", " + rs.getString("uniquecarrier"));

		}
		
		rs.close();
		stmt.close();
		conn.close();
	}
	@Test
	public void test2() throws ClassNotFoundException, SQLException {
		Class.forName("org.apache.hive.jdbc.HiveDriver");
		Connection conn = DriverManager.getConnection("jdbc:hive2://localhost:10000","","");
		Statement stmt = conn.createStatement();
		System.out.println(conn);
		
		ResultSet rs = stmt.executeQuery("select * from year_delay");
		
		while(rs.next()) {
			System.out.println(rs.getInt(1) + ", " + rs.getInt(2) + ", " + rs.getInt(3) + ", " + rs.getFloat(4));
		}
		
		rs.close();
		stmt.close();
		conn.close();
	}
	

}

	


