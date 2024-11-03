package model;

import java.io.Serializable;

public class Phim682 implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String ten;
	private String theloai;
	private String thoiluong;
	private String namSX;
	private String daodien;
	private String mota;
	private String quocgia;
	private String dvchinh;
	
	public Phim682() {
		super();
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public int getId() {
		return id;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getTen() {
		return ten;
	}
	public void setTheloai(String theloai) {
		this.theloai = theloai;
	}
	public String getTheloai() {
		return theloai;
	}
	public void setThoiluong(String thoiluong) {
		this.thoiluong = thoiluong;
	}
	public String getThoiluong() {
		return thoiluong;
	}
	public void setNamSX(String namSX) {
		this.namSX = namSX;
	}
	public String getNamSX() {
		return namSX;
	}
	public void setDaodien(String daodien) {
		this.daodien = daodien;
	}
	public String getDaodien() {
		return daodien;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getMota() {
		return mota;
	}
	public void setQuocgia(String quocgia) {
		this.quocgia = quocgia;
	}
	public String getQuocgia() {
		return quocgia;
	}
	public void setDvchinh(String dvchinh) {
		this.dvchinh = dvchinh;
	}
	public String getDvchinh() {
		return dvchinh;
	}
}
