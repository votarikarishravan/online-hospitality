<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar-patient.jsp"></jsp:include>
	<!-- Page Content -->
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<jsp:include page="patientprofilesidebar.jsp"></jsp:include>
				
				 <div class="col-md-5 col-lg-5 col-xl-7 theiaStickySidebar">
				 <div class="card">
				 <div class="card-body px-5">
                            <div class="login-header">
                                <h3>Forgot Password?</h3>
                                <p class="small text-muted">Enter your registered mobile number and set new password</p>
                            </div>
                            
                            <!-- Forgot Password Form -->
                            <form action="ChangePassword" method="post" onsubmit="return changePasswordValidate()">
                                <div class="form-group form-focus">
                                    <label class="focus-label">Mobile Number</label>
                                    <input type="number" class="form-control floating" id="mobnum" name="mobile">
                                   
                                </div>
                                <div class="form-group form-focus">
                                    <label class="focus-label">New Password</label>
                                    <input type="password" class="form-control floating" name="npassword" id="password">
                                    
                                </div>
                                <div class="my-2"><span class="text-danger" id="etag"></span></div>
                                <div class="form-group form-focus">
                                    <label class="focus-label">Confirm Password</label>
                                    <input type="password" class="form-control floating" name="cpassword" id="confirmPassword">
                                    
                                </div>
                                <button class="btn btn-primary btn-block btn-lg " type="submit">Reset Password</button>
                            </form>
                            <!-- /Forgot Password Form -->
                            
                        </div>
                        </div>
				</div>
				
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>