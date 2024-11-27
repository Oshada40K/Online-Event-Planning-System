package Controller;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DBconnect {
	
	public static Connection getConnection() throws ClassNotFoundException,SQLException{
		
		

		String url ="jdbc:mysql://127.0.0.1:3306/emslg";
		String user ="root";
		String pass ="root";
				
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url,user,pass);
		
		
		return conn;
	}

	
}
