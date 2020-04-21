package com.cho.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	} // static
	
	@Test
	public void testConnection() {
		try(Connection con =  DriverManager.getConnection(
				"Jdbc:oracle:thin:@localhost:1521:xe",
				"book_ex",
				"1234")) {
			log.info(con);
		} catch (SQLException e) {
			fail(e.getMessage());
		}
	}
}
