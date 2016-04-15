package courier_model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import courier_bean.Add_client_bean;
import db.Db;



public class Add_client_model {

	public static int insert(Add_client_bean ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		
		String sql="insert into add_client(company_name,client_name,address,country,city,postal_code,phone_no)"+
				"VALUES(?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			
		
			ps.setString(1, ob.getCompany_name());
			ps.setString(2, ob.getClient_name());
			ps.setString(3, ob.getAddress());
			ps.setString(4, ob.getCountry());
			ps.setString(5, ob.getCity());
			ps.setString(6, ob.getPostal_code());
			ps.setString(7, ob.getPhone_no());
			
			
			return i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return i;
		
	}
}
