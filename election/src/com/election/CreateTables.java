package com.election;

import com.election.*;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class CreateTables {
	public CreateTables(Connection con, String dBType, ServletContext ctx) throws SQLException, IOException {
		String DBType = dBType;
		InputStream is;
		
		if(DBType.equals("postgres")){
			is = ctx.getResourceAsStream("/WEB-INF/election_POSTGRES.sql");
		}else {
			is = ctx.getResourceAsStream("/WEB-INF/election_admin.sql");
		}
		
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));

        StringBuilder sqlBuilder = new StringBuilder();
        String line;
        while ((line = reader.readLine()) != null) {
            sqlBuilder.append(line);
            sqlBuilder.append("\n");
        }
        String sql = sqlBuilder.toString();

        // Execute SQL statements
        try (Statement stmt = con.createStatement()) {
            boolean notCreated = stmt.execute(sql);
            if (notCreated) {
                System.out.println("yesss");
            } else {
            	GetDBObject.TablesNotExists = true;
            }
        }
	}
	
	
	

}
