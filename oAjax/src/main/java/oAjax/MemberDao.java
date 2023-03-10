package oAjax;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

//Singleton + DBCP
public class MemberDao {
	//Singleton --> Resource 절감
	private static MemberDao instance; //static 해야함 싱글톤
	//Default
	private MemberDao() {
	}
	public static MemberDao getInstance() {
		if(instance == null) {
			instance = new MemberDao();
		}
		return instance;
	}
	//DBCP
	private Connection getConnection() throws SQLException{
		Connection conn = null;
		
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	//HW1--> prepareStatement 사용
	//member1 Read 해서
	// id 존재 --> return1
	// id 존재X -> return0
	public int confirm(String id) {
		int result = 1;
		
		
		
		
		
		
		
		
		
		
		
		return result;
	}
}
