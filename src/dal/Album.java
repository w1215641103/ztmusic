package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.AlbumInfo;

import common.conn;

public class Album {
	conn conn = new conn();
	
	//查询专辑是否存在
	public boolean isAlbum(String name) throws SQLException {
		boolean result = false;
		String sql = "select * from album where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	
	//获取单个专辑
	public AlbumInfo getAlbum(String name) throws SQLException {
		String sql = "select * from album where name = '" + name + "'";
		AlbumInfo albuminfo = new AlbumInfo();
		ResultSet rs = conn.query(sql);
		while (rs.next()) {
			albuminfo.setname(rs.getString("name"));
			albuminfo.setwriter(rs.getString("writer"));
		}
		return albuminfo;
	}
	
	//获取专辑列表
	public List<AlbumInfo> getAlbumList() throws SQLException {
		List<AlbumInfo> albumlist = new ArrayList<AlbumInfo>();
		String sql = "select * from album";
		ResultSet rs = conn.query(sql);
		while(rs.next()) {
			AlbumInfo albuminfo = new AlbumInfo();
			albuminfo.setname(rs.getString("name"));
			albuminfo.setwriter(rs.getString("writer"));
			albumlist.add(albuminfo);
		}
		conn.close();
		return albumlist;
	}
	
	//添加专辑
	public int insertAlbum(AlbumInfo albuminfo) {
		int result = 0;
		String sql = "insert into album(name, writer) values ";
		sql = sql + "('"+albuminfo.getname()+"', '"+albuminfo.getwriter()+"')";
		result = conn.update(sql);
		conn.close();
		return result;
	}
	
	//删除专辑
		public int deletealbum(String name) {
			int result = 0;
			String sql = "delete from album where name = '" + name + "'";
			result = conn.update(sql);
			conn.close();
			return result;
		}
	
	public static void main(String[] args) {
		Album album = new Album();
		AlbumInfo albuminfo = new AlbumInfo();
		albuminfo.setname("a");
		albuminfo.setwriter("a");
		album.insertAlbum(albuminfo);
	}
}
