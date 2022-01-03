<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Add Student</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous">
</head>
<body>
 <div class="container">
  <spring:url value="/customer/addCustomer" var="addURL" />
  <h2>Add Customer</h2>
  <form:form modelAttribute="customerForm" method="post" action="${addURL}" cssClass="form" >
   <form:hidden path="customerId"/>
   <div class="form-group">
    <label>Name</label>
    <form:input path="name" cssClass="form-control" id="name" />
   </div>
   <div class="form-group">
    <label>Mobile No</label>
    <form:input path="mobileNo" cssClass="form-control" id="mobileNo" />
    <label>Email Id</label>
    <form:input path="emailId" cssClass="form-control" id="emailId" />
    
   </div>
   <button type="submit" class="btn btn-success">Add Customer</button>
  </form:form>
  
 </div>
</body>
</html>