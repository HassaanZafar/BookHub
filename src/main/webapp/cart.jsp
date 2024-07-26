<%@page import="com.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.CartDAOImpl"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<%@include file="all_component/allCss.jsp"%>
</head>

<body style="background-color: #ebeff0">
	<%@include file="all_component/navbar.jsp"%>

	<c:if test="${empty userobj}">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<c:if test="${not empty successMsg}">
		<div class="alert alert-success text-center" role="alert"><b>${successMsg}</b></div>
		<c:remove var="successMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg}">
		<div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">

				<div class="card bg-white">
					<div class="card-body">
						<h3 class="text-center text-info">Selected Items</h3>
						<table class="table table-striped">
							<thead>
								<tr>
									<th scope="col">Book Name:</th>
									<th scope="col">Author:</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>

								<%
								User u = (User) session.getAttribute("userobj");

								CartDAOImpl dao = new CartDAOImpl(DBConnect.getConn());
								List<Cart> cart = dao.getBookByUser(u.getId());
								Double totalPrice = 0.00;
								for (Cart c : cart) {
									totalPrice = c.getTotalPrice();
								%>
								<tr>
									<th scope="row"><%=c.getBookName()%></th>
									<td><%=c.getAuthor()%></td>
									<td><%=c.getPrice()%> </td>
									<td><a href="remove_book?bid=<%=c.getBid()%>&&uid=<%=c.getUserId() %>&&cid=<%=c.getCid()%>"
										class="btn btn-sm btn-danger">Remove</a></td>
								</tr>
								<% 
								}  
								%> 
								<tr>
									<th><i>Total=</i></th>
									<td></td>
									<th><%=totalPrice%> <i class="fa-solid fa-dollar-sign"></i></th>
									<td></td>
								</tr>

							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-info">Details for Order</h3>
						<form action="order" method="post"> 
						
						<input type="hidden" value="${userobj.id }" name="id">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Name</label> <input type="text"
									name="username"	class="form-control" id="inputEmail4" required="required" value="${userobj.name }">
								</div> 
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input type="email"
									name="email"	class="form-control" id="inputPassword4"   required="required"
										value="${userobj.email }">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Phone number</label> <input
										name="phno" type="number" class="form-control" id="inputEmail4" required="required"  value="${userobj.phno }">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
									name="address"	class="form-control" id="inputPassword4" required="required" >
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Landmark</label> <input type="text"
									name="landmark"	class="form-control" id="inputEmail4" required="required">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">City</label> <input type="text"
									name="city"	class="form-control" id="inputPassword4" required="required">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Province</label> <input type="text"
									name="state"	class="form-control" id="inputEmail4" required="required">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Postal code</label> <input
									name="pincode"	type="text" class="form-control" id="inputPassword4" required="required">
								</div>
							</div>

							<div class="form-group">
								<label> Payment method</label> <select class="form-control" name="payment"> 
									<option value="noselect">**Select**</option>
									<option value="COD">Cash on Delivery</option>
								</select>
							</div>

							<div class="text-center">
								<button class="btn btn-warning">Order now</button>
								<a href="index.jsp" class="btn btn-success">Continue
									Shopping</a>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>