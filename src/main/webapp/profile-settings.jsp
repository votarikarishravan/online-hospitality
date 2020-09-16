<%@page import="com.shravan.hms.model.PatientProfile"%>
<%@page import="com.shravan.hms.model.Patient"%>
<%@page import="com.shravan.hms.dao.PatientDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<%
	PatientDao dao = new PatientDao();
	PatientProfile pProfile = new PatientProfile();
	Long mobile =(Long)session.getAttribute("patientId");
	String email =(String)session.getAttribute("patientEmail");
	String empty ="-NA-";
	
	pProfile = dao.getPatientById(mobile).getPatientProfile();
	
	String fname = pProfile.getPatientFirstName();
	String lname = pProfile.getPatientLastName();
	
	String dob = pProfile.getPatientDob();
	String bgroup = pProfile.getPatientBloodGroup();
	String address = pProfile.getPatientAddress();
    String city = pProfile.getPatientCity();
    String state = pProfile.getPatientState();
    String zip = pProfile.getPatientZip();
    String country = pProfile.getPatientCountry();
    
	 %>

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
								enctype="multipart/form-data" onsubmit="return profileValidation()">
								<div class="row form-row">
									<div class="col-12 col-md-12">
										<div class="form-group">
											<div class="change-avatar" style="display: inline-flex;">
												<div class="profile-img">
													<img src="images/avatar.png" alt="User Image">
												</div>
												<div class="upload-img text-justify my-auto pl-5">
													<div class="change-photo-btn border">
														<input
															type="file" class="upload" name="patientImage" id="fileUpload" value="Upload Image" accept=".jpg,.png,.gif,.jpeg">
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
												
												<%if(fname!=null){ %>
                                        		value="<%=fname.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty%>"
                                        		<%} %>
												name="patientFirstName">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Last Name</label> <input type="text"
												class="form-control"
												<%if(lname!=null){ %>
                                        		value="<%=lname.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty %>"
                                        		<%} %>
												name="patientLastName">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Date of Birth</label>
											<div class="cal-icon">
												<input type="text" class="form-control datetimepicker"
													
                                            <%if(dob!=null){ %>
                                        		value="<%=dob.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty %>"
                                        		<%} %>
													name="patientDob">
											</div>
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Blood Group</label> <select
												class="form-control select" name="patientBloodGroup">
												<option>
													<%if(bgroup!=null){ %>
                                        		<%=bgroup.trim()%>
                                        		<%}else{ %>
                                        		<%=empty %>
                                        		<%} %>
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
												value="<%=email %>"
												name="patientEmail" readonly="readonly">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Mobile</label> <input type="text"
												value="<%=mobile %>"
												class="form-control" name="patientMobile" readonly="readonly">
										</div>
									</div>
									<div class="col-12">
										<div class="form-group">
											<label>Address</label> <input type="text"
												class="form-control"
												
												<%if(address!=null){ %>
                                        		value="<%=address.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty %>"
                                        		<%} %>
												
												name="patientAddress">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>City</label> <input type="text" class="form-control"
												
                                        <%if(city!=null){ %>
                                        		value="<%=city.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty %>"
                                        		<%} %>
                                        
												name="patientCity">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>State</label> <input type="text" class="form-control"
												
                                        <%if(state!=null){ %>
                                        		value="<%=state.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty %>"
                                        		<%} %>
                                        "
												name="patientState">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Zip Code</label> <input type="text"
												class="form-control"
												
                                        <%if(zip!=null){ %>
                                        		value="<%=zip.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty %>"
                                        		<%} %>
                                        "
												name="patientZip">
										</div>
									</div>
									<div class="col-12 col-md-6">
										<div class="form-group">
											<label>Country</label> <input type="text"
												class="form-control"
												
                                        <%if(country!=null){ %>
                                        		value="<%=country.trim()%>"
                                        		<%}else{ %>
                                        		value="<%=empty %>"
                                        		<%} %>
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