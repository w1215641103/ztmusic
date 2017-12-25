//对音乐的操作
package dal;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.AlbumInfo;
import common.conn;
import model.MusicInfo;

public class Music {
	conn conn = new conn();
	
	//判断歌曲是否存在
	public boolean isMusic(String name) throws SQLException {
		boolean result = false;
		String sql = "select * from music where name = '" + name + "'";
		ResultSet rs = conn.query(sql);
		if (rs.next()) {
			result = true;
		}
		return result;
	}
	
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
			sql = "select * from music where name like '%"+ss+"%' or album like '%"+ss+"%'";
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
	
	//专辑搜索
	public List<MusicInfo> getMusicList_a(String ss) throws SQLException {
		List<MusicInfo> musiclist = new ArrayList<MusicInfo>();
		String sql = "";
		sql = "select * from music where album = '"+ss+"'";
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
	
	//专辑搜索
		public List<MusicInfo> getMusicList_c(String ss) throws SQLException {
			List<MusicInfo> musiclist = new ArrayList<MusicInfo>();
			String sql = "";
			sql = "select * from music where style = '"+ss+"'";
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
	
	//添加音乐
	public int insertMusic(MusicInfo musicinfo) throws SQLException {
		int result = 0;
		String sql = "insert into music(name, writer, album, style) values ";
		AlbumInfo albuminfo = new AlbumInfo();
		Album albumz = new Album();
		albuminfo = albumz.getAlbum(musicinfo.getalbum());
		sql = sql + "('"+musicinfo.getname()+"', '"+albuminfo.getwriter()+"', '"+musicinfo.getalbum()+"', '"+musicinfo.getstyle()+"')";
		result = conn.update(sql);
		conn.close();
		return result;
	}
	
	//删除音乐
	public int deletemusic(String name) {
		int result = 0;
		String sql = "delete from music where name = '" + name + "'";
		result = conn.update(sql);
		conn.close();
		return result;
	}
}
