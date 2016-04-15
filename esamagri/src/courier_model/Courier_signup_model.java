package courier_model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import courier_bean.Courier_signupreg;
import db.Db;



public class Courier_signup_model {
	
	public static int insert(Courier_signupreg ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="insert into courier_signup(NAME,USER_NAME,EMAIL,PASSWORD)"+
				"VALUES(?,?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
		
			ps.setString(1, ob.getNAME());
			ps.setString(2, ob.getUSER_NAME());
			ps.setString(3, ob.getEMAIL());
			ps.setString(4, ob.getPASSWORD());
			
			
		 i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return i;
	}

}
