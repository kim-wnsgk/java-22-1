package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	

	public static Connection getConnection() throws SQLException {
		// JDBC driver name and database URL
		final String PROPERTIES = "?useSSL=false"; // MySQL Connector J 8.0
		final String DB_SCHEMAS = "sampledb_mfdsfood";
		final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver"; // deprecated "com.mysql.jdbc.Driver";  
		final String DB_URL = "jdbc:mysql://localhost:3306/" + DB_SCHEMAS + PROPERTIES; 

		//  Database credentials
		final String USER = "root";
		final String PASS = "170725Kjh!";
		try {
			
			Class.forName(JDBC_DRIVER); //STEP 2: Register JDBC driver
		} catch (ClassNotFoundException e) {
			e.getMessage();
		} 
		return DriverManager.getConnection(DB_URL,USER,PASS); //STEP 3: Open a connection
	}
}
