<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Books</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #ebeff0">
<%
User u=(User)session.getAttribute("userobj");
%>
	<%@include file="all_component/navbar.jsp"%>
	<%
	int bid=Integer.parseInt(request.getParameter("bid"));
	BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
	BookDtls b=dao.getBookById(bid);
	%>
	<div class="container p-3">
		<div class="row p-5">
			<div class="col-md-6 text-center p-5 border bg-white">
				<img src="book/<%=b.getPhotoName() %> " style="height: 200px; width: 150px"><br>
				<h4 class="mt-3">
					Book name: <span class="text-secondary"><%=b.getBookName() %> </span>
				</h4>
				<h4>
					Author name: <span class="text-secondary"> <%=b.getAuthor() %> </span>
				</h4>
				<h4>
					Category: <span class="text-secondary"><%=b.getBookCategory() %> </span>
				</h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2><%=b.getBookName() %> </h2>
				
				<%
				if("Old".equals(b.getBookCategory()))
				{%>
				<h5 class="text-primary">Contact with seller</h5>
				<h5 class="text-primary" ><i class="fa-solid fa-envelope"></i>Email: <%=b.getEmail() %> </h5>
				<%}
				
				%> 
				
				
				<div class="row">
					<div class="col-md-4 text-success text-center p-2">
						<i class="fa-solid fa-sack-dollar fa-2x"></i></i>
						<p>Cash On Delivery</p>
					</div>
					<div class="col-md-4 text-secondary text-center p-2">
						<i class="fa-solid fa-rotate-left fa-2x"></i>
						<p>Return Available</p>
					</div>
					<div class="col-md-4 text-danger text-center p-2">
						<i class="fa-solid fa-truck fa-2x"></i>
						<p>Free Shipping</p>
					</div>

				</div>
				
				<%
				if("Old".equals(b.getBookCategory())){
				%>	
				<div class="text-center p-3">
					<a href="index.jsp" class="btn btn-info"><i
						class="fa-solid fa-cart-arrow-down"></i> Continue Shopping </a> <a href=""
						class="btn btn-secondary"> <i class="fa-solid fa-dollar-sign"></i><%=b.getPrice() %> 
					</a>
				</div>
				<%}else{%>
				
					<% if(u==null)
								{%>
									<a href="login.jsp" class="btn btn-info btn ml-1">Add to cart</a>
									<%}
								else{
									%>
									<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-info btn ml-1">Add to cart</a>
									<% 
								}
									%>
					
					
					 <a href=""
						class="btn btn-secondary"> <i class="fa-solid fa-dollar-sign"></i><%=b.getPrice() %> 
					</a>
				</div>
				<% 
				}
				%>
				
				

			</div>
		</div>
	</div>
</body>
</html>