package step4_00_boardEx_Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

import com.mysql.cj.protocol.Resultset;

public class boardDAO { // 데이터 접근 객체
	
	// 싱글턴 패턴 만들기
	private boardDAO() {}
	private static boardDAO instance = new boardDAO();
	public static boardDAO getInstance () {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private Resultset rs;
	
	public Connection getConnection () {
		
		String dbURL 	  = "jdbc:mysql://localhost:3306/STEP4_BOARD_EX?serverTimezone=UTC";
		String dbID 	  = "root";
		String dbPassword = "1234";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	// [페이징 테스트용] 데이터 생성 DAO (DummyData)
	public void setDummy() {
		
		Random ran = new Random();
		
		try {
	
			String[] word = {"가","나","다","라","마","바","사","아","자","차","카","타","파","하"};
			
			for (int i = 1; i < 201; i++) {
				
				String writer  = "";
				String passwd  = "1111";
				String subject = "";
				String email   = "";
				String content = "";
				for (int j = 0; j < 7; j++) {
					writer  += word[ran.nextInt(word.length)];
					subject += word[ran.nextInt(word.length)];
					content += word[ran.nextInt(word.length)];
					if (j < 4) {
						email += word[ran.nextInt(word.length)];
					}
				}
				email += "@gmail.com";
				
				String sql = "INSERT INTO BOARD(WRITER,EMAIL,SUBJECT,PASSWORD,REG_DATE,REF,RE_STEP,RE_LEVEL,READ_COUNT,CONTENT)";
					   sql += "VALUES(?, ?, ?, ?, now(), ?, 1, 1, 0, ?)";
				
			    conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, writer);
				pstmt.setString(2, email);
				pstmt.setString(3, subject);
				pstmt.setString(4, passwd);
				pstmt.setInt(5, i);
				pstmt.setString(6, content);
				pstmt.executeUpdate();
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null)  {try {pstmt.close();} catch (SQLException e) {}}
			if (conn != null)   {try {conn.close();}  catch (SQLException e) {}}
		}
	}
	
	
}
