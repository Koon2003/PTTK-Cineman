<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dao.*, model.*, java.util.ArrayList"%>
<%
	Thanhvien682 kh = (Thanhvien682) session.getAttribute("khachhang");
	if (kh == null) {
		response.sendRedirect("gdDangnhap682.jsp?err=timeout");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tìm kiếm thông tin phim</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tkttp.css">
</head>
<body>
	<%
	ArrayList<Phim682> dsphim = null;
	String action = (String) request.getParameter("action");
	String key = (String) request.getParameter("key");
	if ( action != null && key != null && action.equalsIgnoreCase("find")) {
		dsphim = (new Phim682DAO()).getDSPhim(key);
	}
	%>
	<div class="search-container">
		<h1>Tìm kiếm thông tin phim</h1>
		<div class="search-bar">
			<form action="<%=request.getContextPath()%>/khachhang/gdTimkiemTTphim682.jsp?action=find" method="post">
				<input type="text" name="key" <% if(key != null) { %>value="<%=key%>"<%} %> placeholder="Nhập tên phim ..." required />
				<button class="search-btn" type="submit">Tìm kiếm</button>
			</form>
			<button class="back-btn" onclick="location.href='<%=request.getContextPath()%>/khachhang/gdKhachhang682.jsp'">Quay lại</button>
		</div>
		<%
			if(action != null && action.equalsIgnoreCase("find")) {
		%>
		<table id="results-table">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên Phim</th>
					<th>Thời lượng</th>
				</tr>
			</thead>
			<tbody>
				<%
				if (dsphim != null && dsphim.size() > 0) {
					int stt = 1;
					for (Phim682 phim : dsphim) {
				%>
				<tr class="tr-data" onclick="location.href='<%=request.getContextPath()%>/khachhang/gdChitietTTphim682.jsp?id=<%=phim.getId()%>'">
					<td><%=stt++%></td>
					<td><%=phim.getTen()%></td>
					<td><%=phim.getThoiluong()%> phút</td>
				</tr>
				<%
				}
				} else if (action != null && action.equalsIgnoreCase("find")) {
				%>
				<tr>
					<td colspan="3">Không tìm thấy phim nào</td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
		<%} %>
	</div>
</body>
</html>