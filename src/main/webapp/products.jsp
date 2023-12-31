<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	<%
	ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts = dao.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center">
		<%@ include file="dbconn.jsp" %>
			<%
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next())
				
			%>
			<div class="col-md-4">
				<img src="c:/upload/<%=rs.getString("p_fileName")%> %>" style="width : 100%">
				<h3><%=rs.getString("p_name") %></h3>
				<h3><%=rs.getString("p_description") %></h3>
				<p><%=rs.getString("p_UnitPrice") %></p>
				<p><a href="./product.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button">Detail</a>
			</div>
			<% 
				
			
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
			
			
			%>
			<hr>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>