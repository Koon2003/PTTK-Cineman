package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.TKKHTDT682;

public class TKKHTDTDAO682 extends DAO {
	public TKKHTDTDAO682() {
		super();
	}
	
	public ArrayList<TKKHTDT682> getDSKhachhang(String start, String end) {
		ArrayList<TKKHTDT682> kq = null;
		String sql = "call thongkekhtheodoanhthu(?, ?)";
		
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setString(1, start);
			cs.setString(2, end);
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				if(kq == null) kq = new ArrayList<TKKHTDT682>();
				TKKHTDT682 tk = new TKKHTDT682();
				tk.setId(rs.getInt("id"));
				tk.setMakh(rs.getString("makh"));
				tk.setFullname(rs.getString("tenkhachhang"));
				tk.setTongdoanhthu(rs.getFloat("doanhthu"));
				kq.add(tk);
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = null;
		}
		return kq;
	}
}
