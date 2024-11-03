<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.*, model.*, java.util.ArrayList, java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thống kê chi tiết các giao dịch</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tkctcgd.css" />
</head>
<body>
	<%
	Thanhvien682 ql = (Thanhvien682) session.getAttribute("quanli");
	if (ql == null) {
		response.sendRedirect("gdDangnhap682.jsp?err=timeout");
	}
	int kh_id = Integer.parseInt(request.getParameter("id"));
	String sDate = (String) request.getParameter("startDate");
	String eDate = (String) request.getParameter("endDate");
	ArrayList<TKGiaodich682> dsgd = (new TKGiaodichDAO682()).getDSGiaodich(kh_id, sDate, eDate);
	%>
	<div class="container">
        <h1>Thống kê chi tiết các giao dịch</h1>
        <table>
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Mã giao dịch</th>
                    <th>Ngày giao dịch</th>
                    <th>Số vé</th>
                    <th>Tổng tiền</th>
                </tr>
            </thead>
            <tbody>
                <%
                	if(dsgd != null && dsgd.size() > 0) {
                		int stt = 1;
                		DecimalFormat formatter = new DecimalFormat("#,###");
                		SimpleDateFormat outputFormat = new SimpleDateFormat("dd/MM/yyyy");
                		for(TKGiaodich682 tkgd: dsgd) {
                %>
                <tr>
					<td><%=stt++%></td>
					<td><%=String.format("GD%03d", tkgd.getId())%></td>
					<td><%=outputFormat.format(tkgd.getNgaygiaodich())%></td>
					<td><%=tkgd.getSove()%></td>
					<td><%=formatter.format(tkgd.getTongtien())%> đồng</td>
				</tr>
                <%
                		}
                	}
                %>
            </tbody>
        </table>
        <button class="back-button" onclick="window.history.back();">Quay lại</button>
    </div>
</body>
</html>