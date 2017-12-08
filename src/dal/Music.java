//对音乐的操作
package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.conn;
import model.MusicInfo;

public class Music {
	conn conn = new conn();
	
	//获取单首音乐信息
	public MusicInfo getMusic(String name) throws SQLException {
		MusicInfo musicinfo = new MusicInfo();
		String sql = "select * from music where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			musicinfo.setname(rs.getString("name"));
			musicinfo.setwriter(rs.getString("writer"));
			musicinfo.setalbum(rs.getString("album"));
			musicinfo.setstyle(rs.getString("style"));
		}
		conn.close();
		return musicinfo;
	}
	
	//获取音乐列表
	public List<MusicInfo> getMusicList(String ss) throws SQLException {
		List<MusicInfo> musiclist = new ArrayList<MusicInfo>();
		String sql = "";
		if (ss.equals(""))	{
			sql = "select * from music";
		} else {
			sql = "select * from music where name like '%"+ss+"%' or writer like '%"+ss+"%' or album like '%"+ss+"%'";
		}
		ResultSet rs = conn.query(sql);
		while(rs.next()) {
			MusicInfo musicinfo = new MusicInfo();
			musicinfo.setname(rs.getString("name"));
			musicinfo.setwriter(rs.getString("writer"));
			musicinfo.setalbum(rs.getString("album"));
			musicinfo.setstyle(rs.getString("style"));
			musiclist.add(musicinfo);
		}
		conn.close();
		return musiclist;
	}
}
