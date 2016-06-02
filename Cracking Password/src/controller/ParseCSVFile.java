package controller; 
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.StringTokenizer;
import java.sql.*;

public class ParseCSVFile {
 
        public static void main(String[] args) {
               
                try
                {
                	//csv file containing data
                        String strFile = "D:/words.txt";
                       
                        //create BufferedReader to read csv file
                        BufferedReader br = new BufferedReader( new FileReader(strFile));
                        String strLine = "";
                        StringTokenizer st = null;
                        int linenumber=0;
                        int tokenNumber=0;
                        
                       
                        
                        //read comma separated file line by line
                        while( (strLine = br.readLine()) != null)
                        {
                        	//System.out.println("-->  "+strLine);
                                linenumber++;
                                //break comma separated line using ","
                                st = new StringTokenizer(strLine," ");
                                if(st.hasMoreTokens())
                                {
                                        //display csv values
                                	    tokenNumber++;                                        
                                        System.out.print("        " + st.nextToken());
                                        System.out.print("        " + st.nextToken());
                                        System.out.print("        " + st.nextToken());
                                        System.out.println("        " + st.nextToken());
                                        //System.out.print("        " + st.nextToken());
                                        //System.out.print("        " + st.nextToken());
                                        //System.out.print("Line #2 " + st.nextToken());
                                        // System.out.print("Line #3 " + st.nextToken());
                                        //System.out.println();
                                }                 
                                //reset token number
                                tokenNumber = 0;
                               
                        }
                       
                       
                }
                catch(Exception e)
                {
                        System.out.println("Exception while reading csv file: " + e);                  
                }
}
}
