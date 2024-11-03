<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.*, model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ quản lý</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tcql.css">
</head>
<body>
	<% 
		Thanhvien682 ql = (Thanhvien682) session.getAttribute("quanli");
		if(ql == null) {
			response.sendRedirect("gdDangnhap682.jsp?err=timeout");
		}
	%>
	<div class="container">
        <h2>Trang chủ quản lý</h2>
        <button onclick="location.href='<%=request.getContextPath()%>/quanli/gdXembaocao682.jsp'">Xem báo cáo</button>
    </div>
</body>
</html>