package com.mycompany.support;

import java.io.FileInputStream;
import java.util.Properties;

public class SystemProperties {
	public String[] SystemValues() {
		String[] values = new String[6];
		try {
			Properties prop = new Properties();
			FileInputStream fin = new FileInputStream(Const.PATH+"system.properties");
			prop.load(fin);
			values[0]=prop.getProperty("user");
			values[1]=prop.getProperty("password");
			values[2]=prop.getProperty("Service_Path");
			values[3]=prop.getProperty("port");
			values[4]=prop.getProperty("server");
			values[5]=prop.getProperty("Ontology_Path");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return values;
	}

	
	

	public static void main(String[] args) {
		new SystemProperties().SystemValues();
	}
}
