package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	// JDBC driver name and database URL
		private static final String PROPERTIES = "?useSSL=false"; // MySQL Connector J 8.0
		private static final String DB_SCHEMAS = "sampledb";
		private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver"; // deprecated "com.mysql.jdbc.Driver";  
		private static final String DB_URL = "jdbc:mysql://localhost:3306/" + DB_SCHEMAS + PROPERTIES; 

		//  Database credentials
		private static final String USER = "root";
		private static final String PASS = "170725Kjh!";

	public static Connection getConnection() {
		try {
			Class.forName(JDBC_DRIVER); //STEP 2: Register JDBC driver
		} catch (ClassNotFoundException e) {
			e.getMessage();
		} 
		try {
			return DriverManager.getConnection(DB_URL,USER,PASS);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} //STEP 3: Open a connection
	}
}
