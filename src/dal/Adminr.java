package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import common.conn;

public class Adminr {
	conn conn = new conn();
	
	//�жϵ�¼�û��Ƿ����
		public boolean isExist(String name, String pass) throws SQLException {
			boolean result = false;
			String sql = "select * from admin where name = '" + name + "' and pass = '" + pass + "'";
			ResultSet rs = conn.query(sql);
			if (rs.next()) {
				result = true;
			}
			return result;
		}
		//�ж�ע���û��Ƿ����
		public boolean isExist(String name) throws SQLException {
			boolean result = false;
			String sql = "select * from admin where name = '" + name + "'";
			ResultSet rs = conn.query(sql);
			if (rs.next()) {
				result = true;
			}
			return result;
		}
		//�û�����
		public int insert(String name, String pass) {
			String sql = "insert into admin(name, pass) values ";
			sql = sql + "('"+name+"', '"+pass+"')";
			int result = 0;
			result = conn.update(sql);
			conn.close();
			return result;
		}
		
		//����Աɾ��
		public int deleteadmin(String name) {
			int result = 0;
			String sql = "delete from admin where name = '" + name + "'";
			result = conn.update(sql);
			conn.close();
			return result;
		}
		
		//�û�ɾ��
		public int delete(String name) {
			int result = 0;
			String sql = "delete from user where name = '" + name + "'";
			result = conn.update(sql);
			dMUSIC(name);
			conn.close();
			return result;
		}
		//ɾ���û����ֱ�
		public void dMUSIC(String name) {
			String tablename = name + "_music";
			String sql = "drop table "+tablename;
			conn.update(sql);
		}
}
