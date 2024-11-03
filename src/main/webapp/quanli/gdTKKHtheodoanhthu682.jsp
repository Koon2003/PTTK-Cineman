<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dao.*, model.*, java.util.ArrayList, java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống kê khách hàng theo doanh thu</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tkkhtdt.css" />
</head>
<body>
	<%
	Thanhvien682 ql = (Thanhvien682) session.getAttribute("quanli");
	if (ql == null) {
		response.sendRedirect("gdDangnhap682.jsp?err=timeout");
	}
	ArrayList<TKKHTDT682> dstk = null;
	String action = (String) request.getParameter("action");
	String sDate = (String) request.getParameter("startDate");
	String eDate = (String) request.getParameter("endDate");
	
	if(action != null && sDate != null && eDate != null && action.equalsIgnoreCase("find")) {
		dstk = (new TKKHTDTDAO682()).getDSKhachhang(sDate, eDate);
	}
	%>
	<div class="container">
		<h1>Thống kê khách hàng theo doanh thu</h1>
		<div class="search-bar">
			<form action="<%=request.getContextPath()%>/quanli/gdTKKHtheodoanhthu682.jsp?action=find" method="post">
				<label for="startDate">Ngày bắt đầu:</label> <input type="date" <% if(sDate != null) { %>value="<%=sDate%>"<%} %> id="startDate" name="startDate" required> 
				<br><br>
				<label for="endDate">Ngày kết thúc:</label> <input type="date" <% if(eDate != null) { %>value="<%=eDate%>"<%} %> id="endDate" name="endDate" required> 
				<br><br>
				<button class="search-btn" type="submit">Tìm kiếm</button>
			</form>
			<button class="back-btn" type="button" onclick="location.href='<%=request.getContextPath()%>/quanli/gdXembaocao682.jsp'">Quay lại</button>
		</div>
		<br>
		<% 
			if(action != null && sDate.compareTo(eDate) > 0) {
		%>
			<h3>Vui lòng chọn lại khoảng thời gian!</h3>
		<%} %>
		<%
			if(action != null && action.equalsIgnoreCase("find") && sDate.compareTo(eDate) <= 0) {
		%>
		<table>
			<thead>
				<tr>
					<th>STT</th>
					<th>Mã khách hàng</th>
					<th>Tên khách hàng</th>
					<th>Doanh thu</th>
				</tr>
			</thead>
			<tbody>
				<%
					if(dstk != null && dstk.size() > 0) {
						int stt = 1;
						DecimalFormat formatter = new DecimalFormat("#,###");
						for(TKKHTDT682 tk: dstk) {
				%>
				<tr class="tr-data" onclick="location.href='<%=request.getContextPath()%>/quanli/gdTKchitietcacGD682.jsp?id=<%=tk.getId()%>&&startDate=<%=sDate%>&&endDate=<%=eDate%>'">
					<td><%=stt++%></td>
					<td><%=tk.getMakh()%></td>
					<td><%=tk.getFullname()%></td>
					<td><%=formatter.format(tk.getTongdoanhthu())%> đồng</td>
				</tr>
				<%
						}
					} else if (action != null && action.equalsIgnoreCase("find")) {
				%>
				<tr>
					<td colspan="4">Không tìm thấy khách hàng nào</td>
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