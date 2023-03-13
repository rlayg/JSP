package oAjax;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.mysql.cj.protocol.Resultset;

//Singleton + DBCP --> 가장 이상적
public class MemberDao {
	//Singleton --> Resource 절감  GOF의 디자인패턴중 가장 중요하고 기본
	private static MemberDao instance; //static 해야함 싱글톤
	//Default
	private MemberDao() {
	// 생성자를 private으로 선언하여 외부에서 객체 생성을 막음
	}
	public static MemberDao getInstance() {
		if(instance == null) {
			instance = new MemberDao();
		}
		return instance;
	/*  
 	public static MemberDao getInstance() ->>
	getInstance() 메서드는 Singleton 패턴을 구현하기 위한 메서드로, 
	클래스 레벨에서 한 번만 인스턴스를 생성하고, 생성된 인스턴스를 반환합니다.

	instance 변수가 null인 경우에만 인스턴스를 생성합니다. 
	따라서, 처음 호출될 때는 instance 변수가 null이므로 인스턴스를 생성하고, 
	이후에는 instance 변수에 저장된 인스턴스를 반환합니다.
	
	이렇게 함으로써, 여러 개의 인스턴스가 생성되는 것을 방지하고, 
	하나의 인스턴스만 사용하여 리소스를 절약할 수 있습니다.
	*/	
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
	public int confirm(String id) throws SQLException {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "select * from member1 where id = ?"; 
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}
		return result;
	}
	/*
	 선생님 답 
	 
	public int confirm(String id) throws SQLException {
		int result = 1;
		
		Connection conn = null;
		String sql = "select * from member1 where id = ?"; 
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			} else{
			result = 0;
			}
						
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if(rs != null) {
				rs.close();
			}
			if(pstmt != null) {
				pstmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		}
		return result;
	}
	*/
	
}