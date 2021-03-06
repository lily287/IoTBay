<%-- 
    Document   : index
    Created on : 29/04/2020, 2:05:37 PM
    Author     : lucas
--%>

<%@page import="isd.wsd.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
       <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css" />
        <title>IoTBay - Main Page</title>
    </head>
    <body>
        <%
            Customer customer = (Customer)session.getAttribute("customer");
        %>
        <div class="container">
            <div class="navigation">
                <h3><a href="index.jsp" class="logo-text">IoTBay</a></h3>
                <div class="inner-nav">
                    <a href="ProductCollectionServlet" class="btn btn-outline-primary mr-2">Products</a>
                    <% if(customer == null) { %>
                    <a href="login.jsp" role="button" class="btn btn-light" >Login</a>
                    <a href="register.jsp" role="button" class="btn btn-primary">Register</a>
                    <% } else { %>
                    <a href="main.jsp" role="button" class="btn btn-primary">Main</a>
                    <a href="logout.jsp" role="button" class="btn btn-link">Log out</a>
                    <% } %>
                </div>
            </div>
            <div class="text-center">
                <h1 class="display-3">Customer profile</h1>
                
                <div class="customer-profile">
                    <table class="table">
                    <tr>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Phone Number</th>
                        <th>Date of Birth</th>
                    </tr>
                    <tr>
                        <td>${customer.name}</td>
                        <td>${customer.email}</td>
                        <td>${customer.password}</td>
                        <td>${customer.phone}</td>
                        <td class="text-capitalize">${customer.dob}</td>
                    </tr>
                </table>
                </div>
                
                <p><em>Products coming soon...</em></p>

            </div>
            
            
            
        </div>
</html>
