<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet'>
<meta charset="ISO-8859-1">
<title>Bookhub : Index</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">

.back-img {
	background: url("img/book.jpg");
	height: 70vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: contain;
	background-size: cover;
	background-position: center;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	
}

.Maintitle {
	font-size: 50px;
	color: white;
	font-family: Fantasy;
}

.crd-ho:hover {
	background-color: #cfc9ba;
}
.book{
font-family: 'Pacifico';font-size: 35px;
}
</style>
</head>
<body style="background-color: #ebeff0">

<%
User u=(User)session.getAttribute("userobj");
%>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<h1 class="Maintitle text-center">
			<i><br> Welcome to HJ BookHub </i>
		</h1>
	</div>



	<!--  Recent books  -->

	<div class="container">
	<br>
		<h3 class="book text-center" >Recent Books</h3>
		
		<div class="row">
		<%
				BookDAOImpl dao2=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list2 =dao2.getRecentBooks();
		for(BookDtls b : list2)
				{%>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px;" class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>
						<p>
						<%
						if(b.getBookCategory().equals("Old"))
						{%>
						Category: <b><%=b.getBookCategory() %></b>
							<div class="row">
							
							<a
								href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm ml-5"> View Details </a> <a
								href="" class="btn btn-secondary btn-sm ml-1"> <%=b.getPrice()%><i class="fa-solid fa-dollar-sign"></i>
								
								 </a>
						</div>
							
						<%
						}else{
							%>
							Category: <b><%=b.getBookCategory() %></b></p>
							<div class="row">
							
							
							<% if(u==null)
								{%>
									<a href="login.jsp" class="btn btn-info btn-sm ml-1">Add to cart</a>
									<%}
								else{
									%>
									<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-info btn-sm ml-1">Add to cart</a>
									<% 
								}
									%>
								 <a
									href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm ml-1"> View Details </a> <a
									href="" class="btn btn-secondary btn-sm ml-1"> <%=b.getPrice()%><i class="fa-solid fa-dollar-sign"></i></a>
							</div>
						<%}
						
						%>
						
						 
					</div>
				</div>
			</div>	
				<%}
				%>
	
</div><br>
			<div class=" text-center mt-2">
				<a href="all_recent_book.jsp" class="btn btn-info btn-sm"><h6> View All</h6> </a>
			</div>
		</div>

		<!--  End of Recent book code -->
		<hr>
		<!--  New books  -->

		<div class="container">
			<h3 class="book text-center">New Books</h3>
			
			<div class="row">

				<%
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
				List<BookDtls> list= dao.getNewBook();
				for (BookDtls b : list) {
				%>
				<div class="col-md-3">
					<div class="card crd-ho">
						<div class="card-body text-center">
							<img alt="" src="book/<%=b.getPhotoName()%>"
								style="width: 150px; height: 200px;" class="img-thumblin">
							<p>
								<%=b.getBookName()%></p>
							<p>
								<%=b.getAuthor()%>
							</p>
							<p>
								Category: <b><%=b.getBookCategory()%></b>
							</p>
							<div class="row">
								<% if(u==null)
								{%>
									<a href="login.jsp" class="btn btn-info btn-sm ml-1">Add to cart</a>
									<%}
								else{
									%>
									<a href="cart?bid=<%=b.getBookId() %>&&uid=<%=u.getId() %>" class="btn btn-info btn-sm ml-1">Add to cart</a>
									<% 
								}
									%>
								
								 <a
									href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm ml-1"> View Details
									 </a> <a
									href="" class="btn btn-secondary btn-sm ml-1"> <%=b.getPrice()%><i
									class="fa-solid fa-dollar-sign"></i>
								</a>
							</div>
						</div>
					</div>
				</div>

				<%
				}
				%>
			</div>
			<br>
			<div class="text-center mt-2">
				<a href="all_new_book.jsp" class="btn btn-info btn-sm"> <h6> View All</h6></a>
			</div>
		</div>

		<!--  End of New book code -->
		<hr>
		<!--  Old books  -->

		<div class="container"">
			<h3 class="book text-center">Old Books</h3>
			
			<div class="row">
				<%
				BookDAOImpl dao3=new BookDAOImpl(DBConnect.getConn());
		List<BookDtls> list3 =dao2.getOldBooks();
		for(BookDtls b : list3)
				{%>
				<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px;" class="img-thumblin">
						<p><%=b.getBookName() %></p>
						<p><%=b.getAuthor() %></p>
						<p><b><%=b.getBookCategory() %></b></p>
						<div class="row">
								<a
									href="view_books.jsp?bid=<%=b.getBookId() %>" class="btn btn-danger btn-sm ml-5"> View Details </a> <a
									href="" class="btn btn-secondary btn-sm ml-1"> <%=b.getPrice()%><i
									class="fa-solid fa-dollar-sign"></i>
								</a>
							</div>
						
						 
					</div>
				</div>
			</div>	
				<%}
				%>		
					</div>
					<br>
			<div class="text-center mt-2">
				<a href="all_old_book.jsp " class="btn btn-info btn-sm"><h6>View All</h6> </a>
			</div>
		</div>

		<!--  End of Old book code -->
		<%@include file="all_component/footer.jsp"%>
</body>
</html>