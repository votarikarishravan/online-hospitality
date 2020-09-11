<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- Page Content -->
 <div class="content pt-5">
    <div class="container-fluid">
        
        <div class="row">
            <div class="col-md-8 offset-md-2">
                
                <!-- Account Content -->
                <div class="account-content mb-5">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7 col-lg-6">
                            <img src="images/HMS-logo.png" class="img-fluid" alt="Login Banner">	
                        </div>
                        <div class="col-md-12 col-lg-6">
                            <div class="login-header">
                                <h3>Forgot Password?</h3>
                                <p class="small text-muted">Enter your email to get a reset password</p>
                            </div>
                            
                            <!-- Forgot Password Form -->
                            <form action="reset_password">
                                <div class="form-group form-focus">
                                    <label class="focus-label">Email</label>
                                    <input type="email" class="form-control floating" name="email">
                                    
                                </div>
                                <div class="text-right mb-2">
                                    <a class="forgot-link" href="login.jsp">Remember your password?</a>
                                </div>
                                <button class="btn btn-primary btn-block btn-lg login-btn" type="submit">Reset Password</button>
                            </form>
                            <!-- /Forgot Password Form -->
                            
                        </div>
                    </div>
                </div>
                <!-- /Account Content -->
                
            </div>
        </div>

    </div>

</div>		
	<!-- /Page Content -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>