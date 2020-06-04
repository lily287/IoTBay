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
        <title>IoTBay - Logging out...</title>
    </head>
    <body>
        <%
        
            Customer customer = (Customer)session.getAttribute("customer");
        
        %>
        <div class="container">
            <div class="navigation">
                <h3><a href="index.jsp" class="logo-text">IoTBay</a></h3>
                <div class="inner-nav">
                    <% if(customer == null) { %>
                    <a href="login.jsp" role="button" class="btn btn-light" >Login</a>
                    <a href="register.jsp" role="button" class="btn btn-primary">Register</a>
                    <% } else { %>
                    <a href="main.jsp" role="button" class="btn btn-primary">Main</a>
                    <a href="logout.jsp" role="button" class="btn btn-link">Log out</a>
                    <% } %>
                </div>
            </div>
            <h1 class="display-3 text-center">Login</h1>
            <div class="register">
                <div class="card">
                    <div class="card-body">
                      <form method="POST" action="welcome.jsp">
                        <div class="form-group">
                          <label for="email">Email address</label>
                          <input type="text" class="form-control" id="email" name="email" placeholder="e.g. john@smith.com">
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" class="form-control" id="password" name="password" placeholder="">
                        </div>
                    
                          <input type="hidden" name="objtype" value="login" />
                          <div class="text-center">
                              <button type="submit" class="btn btn-primary ">Log in</button>
                          </div>
                      </form>
                    </div>
                </div>
            </div>
            
        </div>
<div class="index-footer text-muted"><small>ISD - Group 7</small></div>    </body>
</html>
