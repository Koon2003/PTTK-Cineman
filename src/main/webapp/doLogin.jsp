<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dao.*, model.*"%>

<% 
	String username = (String) request.getParameter("username");
	String password = (String) request.getParameter("password");
	
	Thanhvien682 tv = new Thanhvien682();
	tv.setUsername(username);
	tv.setPassword(password);

	Thanhvien682DAO dao = new Thanhvien682DAO();
	boolean res = dao.checkLogin(tv);
	
	if(res && (tv.getVaitro().equalsIgnoreCase("quanli"))) {
		session.setAttribute("quanli", tv);
		response.sendRedirect("quanli\\gdNhanvienQL682.jsp");
	} else if(res && (tv.getVaitro().equalsIgnoreCase("khachhang"))) {
		session.setAttribute("khachhang", tv);
		response.sendRedirect("khachhang\\gdKhachhang682.jsp");
	} else {
		response.sendRedirect("gdDangnhap682.jsp?err=fail");
	}
%>