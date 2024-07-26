<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin all books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>

 <c:if test="${empty userobj }">
							
							<c:redirect url="../login.jsp" />
						</c:if>
<h3 class="text-center"> Hello Admin </h3>

                        <c:if test="${not empty successMsg }">
							<h3 class="text-center text-success">${successMsg }</h3>
							<c:remove var="successMsg" scope="session" />
						</c:if>
				   			<c:if test="${not empty failedMsg }">
					<h5 class="text-center text-danger">${failedMsg }</h5>
					<c:remove var="failedMsg" scope="session"/>
					</c:if>

<table class="table table-striped">
  <thead class="bg-danger text-white">
    <tr>
    <th scope="col">ID</th>
      <th scope="col">Book name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <% 
  BookDAOImpl dao=new BookDAOImpl(DBConnect.getConn());
  List<BookDtls> list=dao.getAllBooks();
  for(BookDtls b : list ){
	  %>
	 <tr>
      <td><%=b.getBookId() %></td>   
      <td><%=b.getBookName() %></td>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice()%></td>
      <td><%=b.getBookCategory() %></td>
      <td><%=b.getStatus() %></td>
      <td>
      <a href="edit_books.jsp?id=<%=b.getBookId()%>" class="btn btn-sm btn-primary"><i class="fa-solid fa-pen"></i>Edit </a>
      <a href="../delete?id=<%=b.getBookId() %>" class="btn btn-sm btn-info"><i class="fa-solid fa-trash"></i> Delete</a>
      </td>
     
    </tr>   
    <%
	  
	  
  }
  %>
   
  </tbody>
</table>
<div style="margin-top: 330px;"><%@include file="footer.jsp"%></div>
</body>
</html>