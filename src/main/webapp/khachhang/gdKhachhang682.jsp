<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dao.*, model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tckh.css">
</head>
<body>
	<%
		Thanhvien682 kh = (Thanhvien682) session.getAttribute("khachhang");
		if(kh == null) {
			response.sendRedirect("gdDangnhap682.jsp?err=timeout");
		}
	%>
	<div class="container">
        <h2>Trang chủ khách hàng</h2>
        <form name="gdkhachhang" action="gdTimkiemTTphim682.jsp" method="get">
            <button type="submit">Tìm kiếm thông tin phim</button>
        </form>
    </div>
</body>
</html>