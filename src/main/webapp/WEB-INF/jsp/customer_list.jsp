<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Customer List</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous">
</head>
<body>
 <div class="container">
  <table class="table table-striped">
   <thead class="thead-dark">
    <th scope="row">Customer Id</th>
    <th scope="row">Customer Name</th>
    <th scope="row">Mobile No</th>
    <th scope="row">Email Id</th>
    <th scope="row">Address</th>
    <th scope="row">Edit</th>
    <th scope="row">Delete</th>
   </thead>
   
   <tbody>
    <c:forEach items="${customerList}" var="customer" >
     <tr>
      <td>${customer.customerId}</td>
      <td>${customer.name}</td>
      <td>${customer.mobileNo}</td>
      <td>${customer.emailId}</td>
      <td>${customer.mobileNo}</td>
      s
      <td>
       <spring:url value="/customer/editCustomer/${customer.customerId}" var="editURL" />
       <a class="btn btn-info" href="${editURL}" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/customer/deleteCustomer/${customer.customerId}" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL}" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/customer/addCustomer/" var="addURL" />
  <a class="btn btn-success" href="${addURL}" role="button" >Add New Student</a>
 </div>
</body>
</html>