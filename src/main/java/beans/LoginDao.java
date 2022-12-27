package beans;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
	public static boolean validate(LoginBean bean){
		boolean status=false;
		try{
			PreparedStatement ps=ConectorMariadb.getCon().prepareStatement("select * from usuarios where usuario=? and password=?");
			ps.setString(1,bean.getUsuario());
			ps.setString(2, bean.getPassword());
			ResultSet rs=ps.executeQuery();
			status=rs.next();
		}catch(Exception e){}
		return status;
	}
}
