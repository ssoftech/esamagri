package courier_model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import courier_bean.Track_shipment_bean;
import db.Db;


public class Track_shipment_model {
	
	public static int track(Track_shipment_bean ob){
		
		int i=0;
		Connection con=null;
		con=Db.Condb();
		return i;
	}
	
	public static String show_status(int order_id)
	{
		String status = null;
	try{	
		Connection con=Db.Condb();
		
		String sql="Select status from status_order where orderid=?";
		
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setInt(1, order_id);
	
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			status=rs.getString("status");
		}
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	return status;
	
	}
	public static ArrayList<String> status()
	{
		String status = null;
		ArrayList<String> ar=new ArrayList<String>();
	try{	
		Connection con=Db.Condb();
		
		String sql="Select status from status";
		
		PreparedStatement ps=con.prepareStatement(sql);

		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			status=rs.getString("status");
			ar.add(status);
		}
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	
	return ar;
	
	}
	public static int update_status(int order_id,String status)
	{
		int i=0;
	
		try {
			Connection con=Db.Condb();
			
			String sql="update status_order set status=? where orderid=?";
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,status);
			ps.setInt(2, order_id);
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      return i;
}
}
