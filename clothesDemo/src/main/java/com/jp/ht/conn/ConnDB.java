package com.jp.ht.conn;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.tomcat.jdbc.pool.ConnectionPool;

import com.jp.ht.entity.User;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class ConnDB {
	private static Connection conn=null;
	static String driver=null;
	static String url=null;
	static String username=null;
	
	static void getMsg(String path) {
		try {
			InputStream is=new FileInputStream(path);
			
	
			Properties prop=new Properties();
			prop.load(is);
			
			
			driver=prop.getProperty("driver");
			url=prop.getProperty("url");
			username=prop.getProperty("username");
			
		} catch (FileNotFoundException e) {
		
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}

	static {
		
		getMsg("C:\\Users\\ht201\\OneDrive\\デスクトップ\\EclipseWorkSpace\\clothesDemo\\config\\dbinfo.properties");
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,username,null);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		
	}
	
	
	public static Connection getConnection() {
		
		return conn;
		
	}
	public static Connection getInstance() {
    	if(conn==null) {
    	 try {
			Class.forName("com.mysql.jdbc.Driver");
		
		    conn=DriverManager.getConnection(url,username,null);}
    	 catch (ClassNotFoundException e) {
 			
 			e.printStackTrace();
 		}   
			catch (SQLException e) {
				
				e.printStackTrace();
			}
		
     	
        }
    	
		return conn;

    	
    }
	public static void release(ResultSet resultSet, Statement statement, Connection connection) {
		if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
	
	}
}


  
	

