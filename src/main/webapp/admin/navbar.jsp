<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<div class="container-fluid"
	style="height: 10px; background-color: grey;"></div>

<div class="container-fluid p-3 bg-light">
	<div class="row">
		<div class="col-md-9 text-info">
			<h3>
				<i class="fa-solid fa-book-bookmark"></i> HJ BookHub
			</h3>
		</div>
		
		<div class="col-md-3 ">
		<c:if test="${not empty userobj }">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	
		<a class="btn btn-danger text-white "><i class="fa-solid fa-user"></i>&nbsp;&nbsp;  ${ userobj.name} </a>
		<a data-toggle="modal" data-target="#exampleModalCenter"
		 class="btn btn-info ml-1 text-white">
		 <i class="fa-solid fa-right-to-bracket"></i> Logout</a>
		</c:if>
		<c:if test="${empty userobj }">
			<a href="../login.jsp" class="btn btn-danger "> <i class="fa-solid fa-right-to-bracket"></i> Login </a>
			
			
			 <a	href="../register.jsp" class="btn btn-info ml-1"> <i class="fa-regular fa-address-card"></i> Register</a>
        </c:if>
		</div>
	</div>
</div>


<!--  Logout modal  -->


<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Alert!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
       <h4> Do you want to logout?</h4>
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a> </div>
     
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>
<!--  end logout modal  -->

<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto ">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp">Home</a></li>

		
			</form>
		</div>
	</div>
</nav>