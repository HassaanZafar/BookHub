<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #ebeff0">

	<%@include file="all_component/navbar.jsp"%>


	<div class="container">
		<div class="row p-3">
			<div class="col-md-6 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center text-info"> Add Address </h3>
					<form action="">
				
				<div class="form-row">
						
								
								<div class="form-group col-md-6">
									<label for="inputPassword4">Address</label> <input type="text"
										class="form-control" id="inputPassword4" >
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Landmark</label> <input type="text"
										class="form-control" id="inputPassword4" >
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="inputPassword4">City</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">State</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-4">
									<label for="inputPassword4">Postal code</label> <input type="text"
										class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="text-center">
							<button class="btn btn-danger"> Add </button></div>
				</form>
					
					</div>
					</div>
					</div>
					</div>
					</div>
</body>
</html>