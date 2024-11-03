<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dao.*, model.*"%>
<%
//Ngăn trình duyệt lưu trữ trang
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
		response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		response.setDateHeader("Expires", 0); // Proxies.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/dangnhap.css">
</head>
<body>
	<div class="login-container">
		<h2>Đăng nhập</h2>
		<form name="login" action="doLogin.jsp" method="post">
			<input type="text" name="username" placeholder="Tên đăng nhập" required>
			<input type="password" name="password" placeholder="Mật khẩu" required> 
			<input type="submit" value="Đăng nhập">
		</form>
		<%
			if(request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("timeout")) {
		%>
			<hr>
			<h4>Hết phiên làm việc. Làm ơn đăng nhập lại!</h4>
		<%
			} else if(request.getParameter("err") != null && request.getParameter("err").equalsIgnoreCase("fail")) {
		%>
			<hr>
			<h4>Sai tên đăng nhập/mật khẩu!</h4>
		<%
		}
		%>
	</div>
</body>
</html>
