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
							<h2 class="p-3 mb-2 bg-info text-white">Register Doctor</h2>
							<div
								class="col-md-4 col-lg-5 col-lx-5 theiaStickySidebar mx-auto">

								<!-- Register Form -->
								<form action="RegisterDoctor" method="post" onsubmit="return addDoctorValidate()">

									<div class="form-group form-focus">
									<label class="focus-label">Doctor Id</label>
										<input type="number" class="form-control floating" id="docId" name="id" required>
										
									</div>
									<div class="form-group form-focus">
									<label class="focus-label">Doctor Name</label>
										<input type="text" class="form-control floating" id="docName" name="name" required>
										
									</div>
									<div class="form-group">
										<label>Speciality</label> 
										<select class="form-control select" id="speciality" required
											name="speciality">
											<option></option>
											<option>Dentist</option>
											<option>Cardiologist</option>
											<option>Orthopedic</option>
											<option>Neurology</option>
											<option>Urology</option>
										</select>
									</div>
									<div class="form-group form-focus">
									<label class="focus-label">Mobile
											Number</label>
										<input type="number" class="form-control floating" id="mobnum" required
											name="mobileNumber"> 
									</div>
									<div class="form-group form-focus">
									<label class="focus-label">Email Id</label>
										<input type="email" class="form-control floating" name="email" required>
									</div>
									<div class="form-group form-focus">
									 <label class="focus-label">Create
											Password</label>
										<input type="password" class="form-control floating" id="password" required
											name="password">
									</div>
									<div class="form-group form-focus">
										<label class="focus-label">Confirm
											   Password</label>
										   <input type="password" class="form-control floating" id="confirmPassword" required>
									   </div>
									   <div class="my-2"><span class="text-danger" id="etag"></span></div>
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