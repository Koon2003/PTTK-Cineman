package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;

import model.Thanhvien682;

public class Thanhvien682DAO extends DAO {
	public Thanhvien682DAO() {
		super();
	}
	
	public boolean checkLogin(Thanhvien682 tv) {
		boolean res = false;
		if(tv.getUsername().contains("true") ||
			tv.getUsername().contains("=") ||
			tv.getPassword().contains("true") ||
			tv.getPassword().contains("=")) {
			return false;
		}
		
		String sql = "SELECT * FROM tblthanhvien682 WHERE username = ? AND password = ?";
		
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1, tv.getUsername());
			cs.setString(2, tv.getPassword());
			ResultSet rs = cs.executeQuery();
			if(rs.next()) {
				tv.setId(rs.getInt("id"));
				tv.setVaitro(rs.getString("vaitro"));
				tv.setFullname(rs.getString("fullname"));
				res = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			res = false;
		}
		
		return res;
	}
}
