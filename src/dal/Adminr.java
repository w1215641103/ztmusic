package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import common.conn;

public class Adminr {
	conn conn = new conn();
	
	//判断登录用户是否存在
		public boolean isExist(String name, String pass) throws SQLException {
			boolean result = false;
			String sql = "select * from admin where name = '" + name + "' and pass = '" + pass + "'";
			ResultSet rs = conn.query(sql);
			if (rs.next()) {
				result = true;
			}
			return result;
		}
		//判断注册用户是否存在
		public boolean isExist(String name) throws SQLException {
			boolean result = false;
			String sql = "select * from admin where name = '" + name + "'";
			ResultSet rs = conn.query(sql);
			if (rs.next()) {
				result = true;
			}
			return result;
		}
		//用户插入
		public int insert(String name, String pass) {
			String sql = "insert into admin(name, pass) values ";
			sql = sql + "('"+name+"', '"+pass+"')";
			int result = 0;
			result = conn.update(sql);
			conn.close();
			return result;
		}
		
		//管理员删除
		public int deleteadmin(String name) {
			int result = 0;
			String sql = "delete from admin where name = '" + name + "'";
			result = conn.update(sql);
			conn.close();
			return result;
		}
		
		//用户删除
		public int delete(String name) {
			int result = 0;
			String sql = "delete from user where name = '" + name + "'";
			result = conn.update(sql);
			dMUSIC(name);
			conn.close();
			return result;
		}
		//删除用户音乐表
		public void dMUSIC(String name) {
			String tablename = name + "_music";
			String sql = "drop table "+tablename;
			conn.update(sql);
		}
}
