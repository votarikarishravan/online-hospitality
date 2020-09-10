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
					<h3>
						Login <span>Here</span>
					</h3>
					<strong class="text-danger">
					<%
					String msg = (String) request.getAttribute("dmessage");
						if (msg != null) {
							out.println(msg);
						}
					%>
					</strong>
				</div>
				<form action="DoctorLogin" method="post">
					<div class="form-group form-focus">
						<input type="text" readonly class="form-control floating"
							value="Reception" name="username">

					</div>
					<div class="form-group form-focus">
						<input type="number" class="form-control floating" name="id" required="required">
						<label class="focus-label">Id</label>
					</div>
					<div class="form-group form-focus">
						<input type="password" class="form-control floating"
							name="password" required="required"> <label class="focus-label">Password</label>
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