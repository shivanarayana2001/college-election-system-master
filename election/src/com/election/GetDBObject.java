package com.election;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

public class GetDBObject {
	
	public static Connection CAPI() throws SQLException, ClassNotFoundException {
		ReadFromXml rfx = new ReadFromXml();
		Map<String, String> map = rfx.ReadDBDetails();
		String url =map.get("url");
		String dbUser = map.get("user");
		String password = map.get("password");
		String driver = map.get("driver");
		Class.forName(driver);
		
		Connection con = DriverManager.getConnection(url, dbUser, password);;
		return con;
	}
	
}
