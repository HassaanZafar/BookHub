<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<div class="container-fluid" 
style="height:10px;
background-color:grey;
"> </div>

<div class="container-fluid p-3 bg-light" >
<div class="row">
<div class="col-md-3 text-info">
<h3><i class="fa-solid fa-book-bookmark"></i> HJ BookHub</h3>
</div>
<div class="col-md-6">
 <form class="d-flex" action="search.jsp" method="post">
        <input class="form-control me-2" type="search" placeholder="Search" name="ch" aria-label="Search">
        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
      </form>
      
</div>

<c:if test="${not empty userobj}">
<div class="col-md-3 ">

<a href="cart.jsp"><i class="fa-solid fa-cart-arrow-down ml-1 fa-2x ml-5" style="color: #29d169;"></i></a>

<a href="login.jsp" class="btn btn-danger ml-1 "><i class="fa-solid fa-user-graduate"></i> ${userobj.name}</a>
 <a href="logout" class="btn btn-info ml-1"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
</div>
</c:if>

<c:if test="${empty userobj}">
<div class="col-md-3 ">
<a href="login.jsp" class="btn btn-danger "><i class="fa-solid fa-right-from-bracket"></i> Login </a>
 <a href="register.jsp" class="btn btn-info ml-1"><i class="fa-solid fa-address-card"></i> Register</a>
</div>
</c:if>



</div>
</div>

<nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><i class="fa-solid fa-house"></i></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto ">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>
       &nbsp;&nbsp;&nbsp;&nbsp;
        <li class="nav-item active"><a class="nav-link" href="all_recent_book.jsp"><i class="fa-solid fa-book-open"></i> Recent Book</a></li>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <li class="nav-item active" ><a class="nav-link" href="all_new_book.jsp"><i class="fa-solid fa-book-open"></i> New Book</a></li>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <li class="nav-item active"><a class="nav-link" href="all_old_book.jsp"><i class="fa-solid fa-book-open"></i> Old Book</a></li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
      
       <a href="setting.jsp" class="btn btn-success " type="submit"><i class="fa-regular fa-user"></i>Manage Profile</a>
         <a href="about.jsp" class="btn btn-warning ml-2 " type="submit"><i class="fa-solid fa-circle-info"></i> About us</a>
      </form>
    </div>
  </div>
</nav>