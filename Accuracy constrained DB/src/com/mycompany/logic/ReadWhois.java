package com.mycompany.logic;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

import com.mycompany.support.Const;

public class ReadWhois {
	public String performWhoisQuery(String host, int port, String query)
			throws Exception {
		boolean activateRead = false;
		String whoisOut="";
		Socket socket = new Socket(host, port);

		InputStreamReader isr = new InputStreamReader(socket.getInputStream());
		BufferedReader in = new BufferedReader(isr);

		PrintWriter out = new PrintWriter(socket.getOutputStream(), true);
		out.println(query);

		String line = "";
		while ((line = in.readLine()) != null) {
			if (line.contains("Domain Name:")) {
				activateRead=true;
				//whoisOut=line;
			}
			if(activateRead)
			{
				if(whoisOut.equals(""))
				{
					whoisOut=line +" !";
				}
				else
				{
					if(!line.contains("Expiration Date:"))
					whoisOut+=line +" !";
					else
					whoisOut+=line;
				}
				
				if(line.contains("Expiration Date:")) {
					activateRead=false;
				}	
			}
			
			// System.out.println(line);
		}
		return whoisOut;
	}

	public static void main(String[] args) {
		String query = "=facebook.com";
		int port = Integer.parseInt(Const.WHOIS_PORT);
		String host = Const.WHOIS_HOST;
		ReadWhois readWhois=new ReadWhois();
		try {
			System.out.println(readWhois.performWhoisQuery(host, port, query));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
