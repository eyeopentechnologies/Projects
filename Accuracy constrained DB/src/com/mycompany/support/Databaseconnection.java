package com.mycompany.support;
import java.sql.*;

import com.mycompany.support.SystemProperties;
public class Databaseconnection
{   
    public Connection connection = null;
	public Connection connection()
	{
		SystemProperties systemProp = new SystemProperties();

		Connection connection = null;
		try {
			String[] det = systemProp.SystemValues();
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/bootstrapping?user="
							+ det[0] + "&password=" + det[1] + "");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
}
