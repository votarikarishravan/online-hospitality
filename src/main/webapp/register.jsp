<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<div class="col-md-8 offset-md-2">


					<!-- Register Content -->
					<div class="account-content p-5">
						<div class="row align-items-center justify-content-center">
							<div class="col-md-7 col-lg-6 login-left">
								<img src="images/HMS-logo.png" class="img-fluid"
									alt="Doccure Register">
							</div>
							<div class="col-md-12 col-lg-6 login-right mx-auto">
								<div class="login-header ">
									<h5 class="p-3 bg-info text-white">Patient Register</h5>
									<%
										String msg = (String) request.getAttribute("Emessage");
										if (msg != null) {
									%>
									<span class="text-danger"><%=msg%></span>
									<%
										}
									%>
								</div>

								<!-- Register Form -->
								<form action="RegisterPatient" method="post"
									onsubmit="return validateform()">
									<div class="form-group form-focus">
									<label class="focus-label">Name</label>
										<input type="text" class="form-control floating" name="name"
											required="required"> 
									</div>
									<div class="form-group form-focus">
									<label
											class="focus-label">Mobile Number</label>
										<input type="text" class="form-control floating"
											required="required" name="mobileNumber"> 
									</div>
									<div class="form-group form-focus">
									 <label
											class="focus-label">Email Id</label>
										<input type="email" class="form-control floating" name="email"
											id="pemail" required="required">
									</div>
									<div class="form-group form-focus">
									<label
											class="focus-label">Create Password</label>
										<input type="password" class="form-control floating"
											required="required" id="ppassword" name="password"> 
									</div>
									<div class="form-group form-focus">
									<label class="focus-label">Confirm Password</label>
										<input type="password" class="form-control floating"
											required="required" id="pConfirmPassword">
										
									</div>
									<div class="text-right">
										<a class="forgot-link" href="login.jsp">Already have an
											account?</a>
									</div>
									<button class="btn btn-primary btn-block btn-lg login-btn"
										type="submit">Signup</button>


								</form>
								<!-- /Register Form -->

							</div>
						</div>
					</div>
					<!-- /Register Content -->

				</div>
			</div>

		</div>

	</div>
	<!-- /Page Content -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>