package model;

import java.io.Serializable;
import java.util.Date;

public class Thanhvien682 implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String username;
	private String password;
	private String fullname;
	private Date ngaysinh;
	private String email;
	private String sdt;
	private String ghichu;
	private String vaitro;
	private int tblDiachiid;
	
	public Thanhvien682() {
		super();
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsername() {
		return username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getFullname() {
		return fullname;
	}
	public void setNgaysinh(Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	public Date getNgaysinh() {
		return ngaysinh;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail() {
		return email;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getSdt() {
		return sdt;
	}
	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}
	public String getGhichu() {
		return ghichu;
	}
	public void setVaitro(String vaitro) {
		this.vaitro = vaitro;
	}
	public String getVaitro() {
		return vaitro;
	}
	public void setTblDiachiid(int tblDiachiid) {
		this.tblDiachiid = tblDiachiid;
	}
	public int getTblDiachiid() {
		return tblDiachiid;
	}
}
