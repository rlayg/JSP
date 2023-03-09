package och11;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MemberDao {
	private Connection getConnection() throws NamingException {
		Connection conn = null;
		
		
		try {
			Context ctx;
			ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB"); //context.xml의 name:jdbc/OracleDB 가져온거
			conn = ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return conn;
	}
	
	public int insert(MemberDto member) throws SQLException {
		
		
		Connection conn = null;
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO member1 VALUES (?, ?, ?, sysdate)"; //sysdate 날짜갑는 가장 기본적인 방법
		try {
			// 1. DBCP 이용
			conn = getConnection();
			// 2. PreparedStatement 이용
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, member.getId());  //DB서버에 저장된 값 가져옴 DTO 통해서
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
		// 3. Member1 진짜 Insert
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			if (pstmt != null) pstmt.close();
			if (conn != null) conn.close();
		}
		
		
		return result;
	}
}
