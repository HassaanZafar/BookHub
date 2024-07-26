<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #d8dce3;">
	<%@include file="all_component/navbar.jsp"%>
	<div class="container p-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<c:if test="${not empty successMsg }">
					<p class="text-center text-success" >${successMsg }</p>
					<c:remove var="successMsg" scope="session"/>
					</c:if>
					
					<c:if test="${not empty failedMsg}">
					<p class="text-center text-danger" >${failedMsg }</p>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>
						<h4 class="text-center">Registration</h4>
						<form action="register" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter your fullname </label> <input
									type="text" class="form-control" required="required"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter name" name="fname">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Email-address</label> <input
									type="email" class="form-control" id="exampleInputPassword1"
									placeholder="Enter email" required="required" name="email">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Phone-number </label> <input
									type="number" class="form-control" required="required"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter phonenumber" name="phno">

							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Password </label> <input
									type="password" class="form-control" required="required"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter password" name="password">

							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree terms and conditions!</label>
							</div>
							<div class="text-center">
								<br>
								<button type="submit" class="btn btn-primary">Register</button>
								<br>
								<br> <a href="login.jsp"> Already have an account?</a>
							</div>
						</form>



					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>