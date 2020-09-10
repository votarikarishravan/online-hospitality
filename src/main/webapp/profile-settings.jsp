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

				<div class="col-md-7 col-lg-8 col-xl-9">
					<div class="card">
						<div class="card-body">

							<!-- Profile Settings Form -->
							<form action="SavePatientProfile" method="post"
								enctype="multipart/form-data">
								<div class="row form-row">
									<div class="col-12 col-md-12">
										<div class="form-group">
											<div class="change-avatar" style="display: inline-flex;">
												<div class="profile-img">
													<img src="images/avatar.png" alt="User Image">
												</div>
												<div class="upload-img text-justify my-auto pl-5">
													<div class="change-photo-btn border">
														<span><i class="fa fa-upload"></i> Upload Photo</span> <input
															type="file" class="upload" name="patientImage">
													</div>
													<small class="form-text text-muted">Allowed JPG,
														GIF or PNG. Max size of 2MB</small>
												</div>
											</div>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>First Name</label> <input type="text"
												class="form-control"
												value="
                                        <%=session.getAttribute("patientFirstName")%>
                                        "
												name="patientFirstName">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Last Name</label> <input type="text"
												class="form-control"
												value="
                                        <%=session.getAttribute("patientLastName")%>
                                        "
												name="patientLastName">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Date of Birth</label>
											<div class="cal-icon">
												<input type="text" class="form-control datetimepicker"
													value="
                                            <%=session.getAttribute("patientDob")%>
                                            "
													name="patientDob">
											</div>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Blood Group</label> <select
												class="form-control select" name="patientBloodGroup">
												<option>
													<%=session.getAttribute("patientBloodGroup")%>
												</option>
												<option>A-</option>
												<option>A+</option>
												<option>B-</option>
												<option>B+</option>
												<option>AB-</option>
												<option>AB+</option>
												<option>O-</option>
												<option>O+</option>
											</select>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Email ID</label> <input type="email"
												class="form-control"
												value="
                                        <%=session.getAttribute("patientEmail")%>
                                        "
												name="patientEmail">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Mobile</label> <input type="text"
												value="
                                        <%=session.getAttribute("patientMobile")%>
                                        "
												class="form-control" name="patientMobile">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>Address</label> <input type="text"
												class="form-control"
												value="
                                        <%=session.getAttribute("patientAddress")%>
                                        "
												name="patientAddress">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>City</label> <input type="text" class="form-control"
												value="
                                        <%=session.getAttribute("patientCity")%>
                                        "
												name="patientCity">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>State</label> <input type="text" class="form-control"
												value="
                                        <%=session.getAttribute("patientState")%>
                                        "
												name="patientState">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Zip Code</label> <input type="text"
												class="form-control"
												value="
                                        <%=session.getAttribute("patientZip")%>
                                        "
												name="patientZip">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Country</label> <input type="text"
												class="form-control"
												value="
                                        <%=session.getAttribute("patientCountry")%>
                                        "
												name="patientCountry">
										</div>
									</div>
								</div>
								<div class="submit-section">
									<button type="submit" class="btn btn-primary submit-btn">Save
										Changes</button>
								</div>
							</form>
							<!-- /Profile Settings Form -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>