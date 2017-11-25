package common;
import java.sql.*;

public class conn {
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String csql = "jdbc:mysql://localhost:3306/music?useUnicode=true&characterEncoding=UTF-8";
	
	//连接数据库
	public conn() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (java.lang.ClassNotFoundException e) {
			System.err.println(e.getMessage());
		}
	}
	
	
	//查询操作
	public ResultSet query(String sql) {
		try {
			conn = DriverManager.getConnection(csql, "root", "123456");
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
		} catch(SQLException ex) {
			System.err.println(ex.getMessage());
		}
		return rs;
	}
	
	
	//修改操作
	public int update(String sql) {
		int result = 0;
		try {
			conn = DriverManager.getConnection(csql, "root", "123456");
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			result = stmt.executeUpdate(sql);
		} catch(SQLException ex) {
			System.err.println(ex.getMessage());
		}
		return result;
	}
	
	//关闭数据库
	public void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch(Exception e ) {
			e.printStackTrace(System.err);
		}
	}
}








