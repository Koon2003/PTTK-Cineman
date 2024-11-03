<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dao.*, model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiết thông tin phim</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ctttp.css">
</head>
<body>
	<%
	Thanhvien682 kh = (Thanhvien682) session.getAttribute("khachhang");
	if (kh == null) {
		response.sendRedirect("gdDangnhap682.jsp?err=timeout");
	}
	int id = Integer.parseInt(request.getParameter("id"));
	Phim682 phim = (new Phim682DAO()).getPhim(id);
	%>
	<div class="movie-details">
		<h1>Thông tin phim <%=phim.getTen()%></h1>
		<p>
			<strong>Tên Phim:</strong> <%=phim.getTen()%>
		</p>
		<p>
			<strong>Thể Loại:</strong> <%=phim.getTheloai()%>
		</p>
		<p>
			<strong>Thời Lượng:</strong> <%=phim.getThoiluong()%> phút
		</p>
		<p>
			<strong>Đạo Diễn:</strong> <%=phim.getDaodien()%>
		</p>
		<p>
			<strong>Diễn viên chính:</strong> <%=phim.getDvchinh()%>
		</p>
		<p>
			<strong>Quốc Gia:</strong> <%=phim.getQuocgia()%>
		</p>
		<p>
			<strong>Năm sản xuất: </strong> <%=phim.getNamSX()%>
		</p>
		<p>
			<strong>Mô Tả:</strong> <%=phim.getMota()%>
		</p>
		<button class="back-button" onclick="history.back()">Quay lại</button>
	</div>
</body>
</html>