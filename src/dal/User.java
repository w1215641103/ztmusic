package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import common.conn;
import model.UserInfo;

public class User {
	conn conn = new conn();
	
	//�жϵ�¼�û��Ƿ����
	public boolean isExist(String name, String pass) throws SQLException {
		boolean result = false;
		String sql = "select * from user where name = '" + name + "' and pass = '" + pass + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	//�ж�ע���û��Ƿ����
	public boolean isExist(String name) throws SQLException {
		boolean result = false;
		String sql = "select * from user where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	
	//�û�����
	public int insert(UserInfo info) {
		String sql = "insert into user(name, pass, phone, email, admin) values ";
		sql = sql + "('"+info.getname()+"', '"+info.getpass()+"', '"+info.getphone()+"','"+info.getemail()+"', '"+info.getadmin()+"')";
		int result = 0;
		result = conn.update(sql);
		conn.close();
		return result;
	}
	
	//�û��޸�
	public int update(UserInfo info) {
		String sql = "update user set pass = '"+info.getpass()+"', phone = '"+info.getphone()+"', email = '"+info.getemail()+"', admin = '"+info.getadmin()+"'";
		int result = 0;
		result = conn.update(sql);
		conn.close();
		return result;
	}
	
	//��ȡ�û���Ϣ
	public UserInfo getUserInfo (String name) throws SQLException {
		UserInfo info = new UserInfo();
		String sql = "select * from user where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			info.setname(rs.getString("name"));
			info.setpass(rs.getString("pass"));
			info.setphone(rs.getString("phone"));
			info.setemail(rs.getString("email"));
			info.setadmin(rs.getInt("admin"));
		}
		conn.close();
		return info;
	}
}



