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
        <title>IoTBay - Register Page</title>
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
                
                <%
                    String existErr = (String) session.getAttribute("existErr");
                    String emailErr = (String) session.getAttribute("emailErr");
                    String nameErr = (String) session.getAttribute("nameErr");
                    String passErr = (String) session.getAttribute("passErr");
                %>
                
            <h1 class="display-3 text-center">Register<%=(existErr != null ? existErr : "")%></h1>
            <div class="register">
                <div class="card">
                    <div class="card-body">
                      <form method="POST" action="welcome.jsp">
                        <div class="form-group">
                          <label for="name">Full Name</label>
                          <input type="text" class="form-control" id="name" name="name" placeholder="<%=(nameErr != null ? nameErr : "Enter Name")%>">
                        </div>
                        <div class="form-group">
                          <label for="email">Email address</label>
                          <input type="text" class="form-control" id="email" name="email" placeholder="<%=(emailErr != null ? emailErr : "Enter Email")%>">
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" class="form-control" id="password" name="password" placeholder="<%=(passErr != null ? passErr : "Enter Password")%>">
                        </div>
                          <div class="form-group">
                            <label for="phone">Phone Number</label>
                            <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter Phone Number">
                          </div>
                          <div class="form-group">
                            <label for="dob">Date of Birth</label>
                            <input type="date" class="form-control" id="dob" name="dob">
                          </div>
                          <hr>
                        <div class="form-group custom-control custom-checkbox pt-2">
                            <input type="checkbox" class="custom-control-input" id="tos" name="tos" value="tos">
                            <label class="custom-control-label" for="tos">I agree to the terms and conditions</label>
                        </div>
                          <input type="hidden" name="objtype" value="register" />
                          <div class="text-center">
                              <button type="submit" class="btn btn-primary ">Sign Up</button>
                          </div>
                      </form>
                    </div>
                </div>
            </div>
            
        </div>
</html>
