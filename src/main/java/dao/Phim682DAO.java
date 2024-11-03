package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Phim682;

public class Phim682DAO extends DAO {
	public Phim682DAO() {
		super();
	}
	
	public ArrayList<Phim682> getDSPhim(String key) {
		ArrayList<Phim682> kq = null;
		String sql = "SELECT * FROM tblphim682 WHERE ten LIKE ?";
		
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1, "%" + key + "%");
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				if(kq == null) kq = new ArrayList<Phim682>();
				Phim682 p = new Phim682();
				p.setId(rs.getInt("id"));
				p.setTen(rs.getString("ten"));
				p.setThoiluong(rs.getString("thoiluong"));
				kq.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = null;
		}
		return kq;
	}
	
	public Phim682 getPhim(int id) {
		Phim682 kq = null;
		String sql = "SELECT * FROM tblphim682 WHERE id = ?";
		
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, id);
			ResultSet rs = cs.executeQuery();
			if(rs.next()) {
				kq = new Phim682();
				kq.setId(rs.getInt("id"));
				kq.setTen(rs.getString("ten"));
				kq.setTheloai(rs.getString("theloai"));
				kq.setThoiluong(rs.getString("thoiluong"));
				kq.setNamSX(rs.getString("namsx"));
				kq.setDaodien(rs.getString("daodien"));
				kq.setQuocgia(rs.getString("quocgia"));
				kq.setMota(rs.getString("mota"));
				kq.setDvchinh(rs.getString("dienvienchinh"));
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = null;
		}
		return kq;
	}
}
