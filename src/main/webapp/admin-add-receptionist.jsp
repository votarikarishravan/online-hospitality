<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar-admin.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<jsp:include page="adminprofilesidebar.jsp"></jsp:include>
				<div class="col-md-7 col-lg-8 col-xl-9 theiaStickySidebar">

					<div class="card">

						<div class="card-body">
							<h2 class="p-3 mb-2 bg-info text-white">Register
								Receptionist</h2>
							<div
								class="col-md-4 col-lg-5 col-lx-5 theiaStickySidebar mx-auto my-4">

								<!-- Register Form -->
								<form action="RegisterReceptionist">

									<div class="form-group form-focus">
										<label class="focus-label"> Id</label>
										<input type="text" class="form-control floating" name="id">
										
									</div>
									<div class="form-group form-focus">
										<label class="focus-label">Receptionist Name</label>
										<input type="text" class="form-control floating" name="name">
										
									</div>

									<div class="form-group form-focus">
									<label class="focus-label">Mobile
											Number</label>
										<input type="text" class="form-control floating"
											name="mobile"> 
									</div>
									<div class="form-group form-focus">
										<label class="focus-label">Email Id</label>
										<input type="email" class="form-control floating" name="email">
										
									</div>
									<div class="form-group form-focus">
									<label class="focus-label">Create
											Password</label>
										<input type="password" class="form-control floating"
											name="password"> 
									</div>
									<button class="btn btn-primary btn-block btn-lg login-btn"
										type="submit">Register</button>


								</form>
								<!-- /Register Form -->
							</div>
						</div>

					</div>
				</div>


			</div>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>