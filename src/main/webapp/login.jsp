<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- head tag -->
<jsp:include page="header.jsp"></jsp:include>
<!-- /head tag -->
<body>
<!-- navigation bar -->
<jsp:include page="navbar.jsp"></jsp:include>
<!-- /navigation bar -->
<!-- Page Content -->
<div class="content">
    <div class="container-fluid">
        
        <div class="row">
            <div class="col-md-8 offset-md-2">
                
                <!-- Login Tab Content -->
                <div class="account-content ">
                    <div class="row align-items-center justify-content-center ">
                        <div class="col-md-7 col-lg-6 login-left">
                            <img src="HMS-logo.png" class="img-fluid" alt="Doccure Login">	
                        </div>
                        <div class="col-md-12 col-lg-6 login-right border rounded my-5">
                            <div class="login-header py-4">
                                <h3>Login <span>Here</span></h3>
                            </div>
                            <form action="PatientLogin" method="post">
                                <div class="form-group form-focus">
                                    <input type="email" class="form-control floating" name="email">
                                    <label class="focus-label">Email</label>
                                </div>
                                <div class="form-group form-focus">
                                    <input type="password" class="form-control floating" name="password">
                                    <label class="focus-label">Password</label>
                                </div>
                                <div class="text-right">
                                    <a class="forgot-link" href="forgot-password.jsp">Forgot Password ?</a>
                                </div>
                                <button class="btn btn-primary btn-block btn-lg login-btn" type="submit">Login</button>
                                
                                <div class="text-center dont-have">Don’t have an account? <a href="register.jsp">Register</a></div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Login Tab Content -->
                    
            </div>
        </div>

    </div>

</div>		
<!-- /Page Content -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>