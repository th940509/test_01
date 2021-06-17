package step4_01_boardEx_Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import com.mysql.cj.protocol.Resultset;

public class BoardDAO { // 데이터 접근 객체

	// 1. 싱글턴 패턴 만들기
	private BoardDAO () {}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private Resultset rs;
	
	public Connection getConnection () {
		
		try {
			String jdbcUrl = "jdbc:mysql://localhost:3306/step3_board_ex?serverTimezone=UTC";
			String dbId    = "root";
			String dbPass  = "1234";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl , dbId , dbPass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	
}
