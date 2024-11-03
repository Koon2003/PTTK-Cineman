<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.*, model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xem báo cáo</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/xbc.css"/>
</head>
<body>
	<%
		Thanhvien682 ql = (Thanhvien682) session.getAttribute("quanli");
		if(ql == null) {
			response.sendRedirect("gdDangnhap682.jsp?err=timeout");
		}
	%>
	<div class="container">
        <h1>Xem báo cáo</h1>
        <button class="button">Thống kê phim</button>
        <button class="button" onclick="location.href='<%=request.getContextPath()%>/quanli/gdTKKHtheodoanhthu682.jsp'">Thống kê khách hàng theo doanh thu</button>
        <button class="button" onclick="location.href='<%=request.getContextPath()%>/quanli/gdNhanvienQL682.jsp'">Quay lại</button>
    </div>
</body>
</html>