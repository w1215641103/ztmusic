package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import common.conn;
import model.UserInfo;

public class User {
	conn conn = new conn();
	
	//判断登录用户是否存在
	public boolean isExist(String name, String pass) throws SQLException {
		boolean result = false;
		String sql = "select * from user where name = '" + name + "' and pass = '" + pass + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	//判断注册用户是否存在
	public boolean isExist(String name) throws SQLException {
		boolean result = false;
		String sql = "select * from user where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	
	//用户插入
	public int insert(UserInfo info) {
		String sql = "insert into user(name, pass, phone, email, album) values ";
		sql = sql + "('"+info.getname()+"', '"+info.getpass()+"', '"+info.getphone()+"','"+info.getemail()+"', '我喜欢%')";
		int result = 0;
		result = conn.update(sql);
		iMUSIC(info.getname());
		conn.close();
		return result;
	}
	//插入用户音乐表
	public void iMUSIC(String name) {
		String tablename = name + "_music";
		String sql = "create table "+tablename+"(music varchar(20) not null, album varchar(1000) not null)";
		conn.update(sql);
	}
	
	//用户修改
	public int update(UserInfo info) {
		String sql = "update user set pass = '"+info.getpass()+"', phone = '"+info.getphone()+"', email = '"+info.getemail()+"'";
		int result = 0;
		result = conn.update(sql);
		conn.close();
		return result;
	}
	//修改收藏
	public int updatealbum(String name, String album) throws SQLException {
		int result = 0;
		String ab = "";
		String sql = "select * from user where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			ab = rs.getString("album");
		}
		ab = ab + album + "%";
		sql = "update user set album = " + ab + "'";
		result = conn.update(sql);
		conn.close();
		return result;
	}
	
	//获取用户信息
	public UserInfo getUserInfo (String name) throws SQLException {
		UserInfo info = new UserInfo();
		String sql = "select * from user where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			info.setname(rs.getString("name"));
			info.setpass(rs.getString("pass"));
			info.setphone(rs.getString("phone"));
			info.setemail(rs.getString("email"));
		}
		conn.close();
		return info;
	}
	
	public static void main(String[] args) {
		User user = new User();
		UserInfo info = new UserInfo();
		info.setname("name");
		info.setpass("pass");
		info.setemail("email");
		info.setphone("phone");
		user.insert(info);
	}
}



