<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid col-md-5">
			<div class="login-right border rounded my-5">
				<div class="login-header py-4">
				<span class="text-danger"><%
					String msg = (String) request.getAttribute("message");
						if (msg != null) {
							out.println(msg);
						}
					%>
					</span>
					<h3>
						Login <span>Here</span>
					</h3>
				</div>
				<form action="AdminLogin" method="post" onsubmit="return adminValidation()">
					<div class="form-group form-focus">
						<label class="focus-label">UserName</label>
						<input type="text" class="form-control floating" name="username" required="required"> 
						
					</div>
					<div class="form-group form-focus">
						<label class="focus-label">Password</label>
						<input type="password" class="form-control floating" name="password" required="required"> 
						
					</div>
					<div class="text-right">
						<a class="forgot-link" href="forgot-password.html">Forgot
							Password ?</a>
					</div>
					<button class="btn btn-primary btn-block btn-lg login-btn"
						type="submit">Login</button>

					<!-- <div class="text-center dont-have">Don’t have an account? <a href="register.html">Register</a></div> -->
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>