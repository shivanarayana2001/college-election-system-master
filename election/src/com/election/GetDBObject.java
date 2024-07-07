package com.election;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;

public class GetDBObject {
	static boolean TablesNotExists = true;
	static boolean ConnectionProvided = false;
	static Connection con = null;
	public static Connection CAPI(ServletContext ctx) {
		if (ConnectionProvided == false) {
			ReadFromXml rfx = new ReadFromXml();
			Map<String, String> map = rfx.readDBDetails(ctx);
			String url = map.get("url");
			String dbUser = map.get("user");
			String password = map.get("password");
			String driver = map.get("driver");
			String database = map.get("database");
			String dbType = map.get("name");

			try {

				Class.forName(driver);
				con = DriverManager.getConnection(url + database, dbUser, password);
				if (tableExists(con, "students")) {
					TablesNotExists = false;
				} else {
					CreateTables ct = new CreateTables(con, dbType, ctx);
				}
				ConnectionProvided = true;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return con;
	}

	private static boolean tableExists(Connection conn, String tableName) throws SQLException {
		DatabaseMetaData metaData = conn.getMetaData();
		ResultSet resultSet = metaData.getTables(null, null, tableName, new String[] { "TABLE" });
		return resultSet.next();
	}

}
