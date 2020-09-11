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
									<h3 class="p-3">Patient Register</h3>
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
										<input type="text" class="form-control floating" name="name"
											required="required"> <label class="focus-label">Name</label>
									</div>
									<div class="form-group form-focus">
										<input type="text" class="form-control floating"
											required="required" name="mobileNumber"> <label
											class="focus-label">Mobile Number</label>
									</div>
									<div class="form-group form-focus">
										<input type="email" class="form-control floating" name="email"
											id="pemail" required="required"> <label
											class="focus-label">Email Id</label>
									</div>
									<div class="form-group form-focus">
										<input type="password" class="form-control floating"
											required="required" id="ppassword" name="password"> <label
											class="focus-label">Create Password</label>
									</div>
									<div class="form-group form-focus">
										<input type="password" class="form-control floating"
											required="required" id="pConfirmPassword">
										<label class="focus-label">Confirm Password</label>
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