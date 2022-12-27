package beans;

import java.sql.DriverManager;
import java.sql.SQLException;

import org.mariadb.jdbc.Connection;
public class ConectorMariadb {
	public static Connection getCon()  {
		Connection con = null;
		try {
			Class.forName ("org.mariadb.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(""
					+ "jdbc:mariadb://localhost:3306/login?user=root"
					+ "");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("error de conexion!");
			e.printStackTrace();
		}
		return con;
	}
}
