<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Recent Book</title>
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">

.crd-ho:hover {
	background-color: #cfc9ba;
}
</style>
</head>
<body>

<%
User u=(User)session.getAttribute("userobj");
%>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid">
		<div class="row p-3">
			
			<%
			String ch=request.getParameter("ch");
				BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2 =dao2.getBookBySearch(ch);
		for(BookDtls b : list2)
				{%>
				<div class="col-md-3">
				<div class="card crd-ho mt-2">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>" style="width: 130px; height: 190px;" class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>
						<p>
						<%
						if(b.getBookCategory().equals("Old"))
						{%>
						Category:<%=b.getBookCategory() %>
							<div class="row">
							
							<a
								href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm ml-5"> View Details </a> <a
								href="" class="btn btn-secondary btn-sm ml-1"> <%=b.getPrice()%> <i class="fa-solid fa-dollar-sign"></i></a>
						</div>
							
						<%
						}else{
							%>
							Category:<%=b.getBookCategory() %>
							<div class="row">
								
								<% if(u ==null)
								{%>
									<a href="login.jsp" class="btn btn-info btn-sm ml-5"><i
						class="fa-solid fa-cart-arrow-down"></i>Add to cart</a>
									<%}
								else{
									%>
									<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-info btn-sm ml-5"><i
						class="fa-solid fa-cart-arrow-down"></i>Add to cart</a>
									<% 
								}
									%>
								
								 <a
									href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm ml-2"> View Details </a> <a
									href="" class="btn btn-secondary btn-sm ml-1"> <%=b.getPrice()%><i class="fa-solid fa-dollar-sign"></i></a>
							</div>
						<%}
						
						%>	 
					</div>
				</div>
			</div>	
				<%}
				%>
			
			</div>
		</div>
</body>
</html>