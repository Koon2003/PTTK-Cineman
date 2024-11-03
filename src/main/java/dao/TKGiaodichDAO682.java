package dao;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.TKGiaodich682;

public class TKGiaodichDAO682 extends DAO {
	public TKGiaodichDAO682() {
		super();
	}
	
	public ArrayList<TKGiaodich682> getDSGiaodich(int id, String startDate, String endDate) {
		ArrayList<TKGiaodich682> kq = null;
		String sql = "call laychitietgiaodich(?, ?, ?)";
		
		try {
			CallableStatement cs = con.prepareCall(sql);
			cs.setInt(1, id);
			cs.setString(2, startDate);
			cs.setString(3, endDate);
			ResultSet rs = cs.executeQuery();
			while(rs.next()) {
				if(kq == null) kq = new ArrayList<TKGiaodich682>();
				TKGiaodich682 tk = new TKGiaodich682();
				tk.setId(rs.getInt("id"));
				tk.setNgaygiaodich(rs.getDate("ngaygiaodich"));
				tk.setSove(rs.getInt("sove"));
				tk.setTongtien(rs.getFloat("tongtien"));
				System.out.println();
				kq.add(tk);
			}
		} catch (Exception e) {
			e.printStackTrace();
			kq = null;
		}
		
		return kq;
	}
}
