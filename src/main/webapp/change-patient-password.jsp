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
                            <form action="ChangePassword" method="post">
                                <div class="form-group form-focus">
                                    <input type="number" class="form-control floating" name="mobile">
                                    <label class="focus-label">Mobile Number</label>
                                </div>
                                <div class="form-group form-focus">
                                    <input type="password" class="form-control floating" name="npassword">
                                    <label class="focus-label">New Password</label>
                                </div>
                                <div class="form-group form-focus">
                                    <input type="password" class="form-control floating" name="cpassword">
                                    <label class="focus-label">Confirm Password</label>
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