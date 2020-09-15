<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.shravan.hms.dao.DoctorDao"%>
<%@page import="com.shravan.hms.dao.PatientDao"%>
<%@page import="com.shravan.hms.model.Doctor"%>
<%@page import="com.shravan.hms.model.Patient"%>
<%@page import="com.shravan.hms.dao.AppointmentDao"%>
<%@page import="com.shravan.hms.model.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<%
		DoctorDao dao = new DoctorDao();
		PatientDao patientDao = new PatientDao();
		AppointmentDao appointDao = new AppointmentDao();
	%>

	<div class="container-fluid">
		<div class="content">

			<div class="row">

				<div class="col-xl-3 col-sm-6 col-12">
					<div class="card">
						<div class="card-body">
							<div class="dash-widget-header">
								<span class="dash-widget-icon text-primary border-primary">
									<i class="fe fe-users"></i>
								</span>
								<div class="dash-count">
									<h3>
										0<%=dao.getAllDoctor().size()%></h3>
								</div>
							</div>
							<div class="dash-widget-info">
								<h6 class="text-muted">Doctors</h6>
								<div class="progress progress-sm">
									<div class="progress-bar bg-primary w-50"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 col-12">
					<div class="card">
						<div class="card-body">
							<div class="dash-widget-header">
								<span class="dash-widget-icon text-success"> <i
									class="fe fe-credit-card"></i>
								</span>
								<div class="dash-count">
									<h3>
										0<%=patientDao.getAllPatient().size()%></h3>
								</div>
							</div>
							<div class="dash-widget-info">

								<h6 class="text-muted">Patients</h6>
								<div class="progress progress-sm">
									<div class="progress-bar bg-success w-50"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 col-12">
					<div class="card">
						<div class="card-body">
							<div class="dash-widget-header">
								<span class="dash-widget-icon text-danger border-danger">
									<i class="fe fe-money"></i>
								</span>
								<div class="dash-count">
									<h3>
										0<%=appointDao.getAllAppointment().size()%></h3>
								</div>
							</div>
							<div class="dash-widget-info">

								<h6 class="text-muted">Appointment</h6>
								<div class="progress progress-sm">
									<div class="progress-bar bg-danger w-50"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-3 col-sm-6 col-12">
					<div class="card">
						<div class="card-body">
							<div class="dash-widget-header" style="display: inline-flex;">
								<h5>My Actions</h5>
							</div>
							<div class="float-right">
								<span class="badge"><a href="LogOut" class=" text-danger">logout</a></span>
							</div>
							<div class="p-2" style="display: inline-flex;">
								<div class="pr-1">
									
										<a href="register.jsp" class="text-white btn btn-info">Registration</a>
									
								</div>
								<div>
									
										<a href="home-book-appointment.jsp" class="text-white btn btn-primary">Appointment</a>
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-12">

					<div class="card">
						<div class="card-body pt-0">

							<!-- Tab Menu -->
							<nav class="user-tabs mb-4 border pt-1">
								<ul
									class="nav nav-tabs nav-tabs-bottom nav-pills nav-justified ">
									<li class="nav-item"><a class="nav-link  active"
										href="#pat_appointments" data-toggle="tab">Today
											Appointments</a></li>
									<li class="nav-item"><a class="nav-link"
										href="#pat_prescriptions" data-toggle="tab">All
											Appointments</a></li>
									<li class="nav-item"><a class="nav-link"
										href="#pat_medical_records" data-toggle="tab"><span
											class="med-records">Registered Patients</span></a></li>
									<li class="nav-item"><a class="nav-link"
										href="#pat_billing" data-toggle="tab">Availible Doctors</a></li>
								</ul>
							</nav>
							<!-- /Tab Menu -->


							<div class="tab-content pt-0">

								<!--today Appointment Tab -->
								<div id="pat_appointments" class="tab-pane fade show active">
									<div class="card card-table mb-0">
										<div class="card-body">
											<div class="table-responsive">
												<table class="datatable table table-hover table-center mb-0">
													<thead>
														<tr>
															<th>Doctor Name</th>
															<th>Speciality</th>
															<th>Patient Name</th>
															<th>Apointment Time</th>
															<th>Applied On</th>
															<th>---</th>

														</tr>
													</thead>
													<tbody>
														<%
															List<Appointment> list = appointDao.getCurrentDayAppointment();

															for (Appointment a : list) {
																Doctor doctor = dao.getDoctorById(a.getDoctorId());
																//					System.out.println(doctor);
														%>
														<tr>
															<td>
																<h2 class="table-avatar">
																	<a href="profile.html" class="avatar avatar-sm mr-2"></a>
																	<a href="profile.html">Dr.<%=doctor.getName()%></a>
																</h2>
															</td>
															<td><%=doctor.getSpeciality()%></td>
															<td>
																<h2 class="table-avatar">
																	<a href="profile.html"><%=patientDao.getPatientById(a.getPatientId()).getName()%></a>
																</h2>
															</td>
															<td><%=a.getBookingDate()%> <span
																class="text-primary d-block">Time slot: <%=a.getTimeSlot()%></span></td>
															<td>
																<%
																	SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
																		String appliedDate = formatter.format(a.getCreatedOn());
																%> <%=appliedDate%>
															</td>
															<td>---</td>
														</tr>
														<%
															}
														%>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- /today appointments -->

								<!-- all appointments -->
								<div class="tab-pane fade" id="pat_prescriptions">
									<div class="card card-table mb-0">
										<div class="card-body">
											<div class="table-responsive">
												<table class="datatable table table-hover table-center mb-0">
													<thead>
														<tr>
															<th>Doctor Name</th>
															<th>Speciality</th>
															<th>Patient Name</th>
															<th>Apointment Time</th>
															<th>Applied On</th>
															<th>Status</th>

														</tr>
													</thead>
													<tbody>
														<%
															List<Appointment> list1 = appointDao.getAllAppointment();

															for (Appointment a1 : list1) {
																Doctor doctor1 = dao.getDoctorById(a1.getDoctorId());
																//					System.out.println(doctor);
														%>
														<tr>
															<td>
																<h2 class="table-avatar">
																	<a href="profile.html" class="avatar avatar-sm mr-2"></a>
																	<a href="profile.html">Dr.<%=doctor1.getName()%></a>
																</h2>
															</td>
															<td><%=doctor1.getSpeciality()%></td>
															<td>
																<h2 class="table-avatar">
																	<a href="profile.html"><%=patientDao.getPatientById(a1.getPatientId()).getName()%></a>
																</h2>
															</td>
															<td><%=a1.getBookingDate()%> <span
																class="text-primary d-block">Time slot: <%=a1.getTimeSlot()%></span></td>
															<td>
																<%
																	SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
																		String appliedDate = formatter.format(a1.getCreatedOn());
																%> <%=appliedDate%>
															</td>
															<td><%=a1.getStatus()%></td>
														</tr>
														<%
															}
														%>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- /all appointments -->

								<!-- registered patients  -->
								<div id="pat_medical_records" class="tab-pane fade">
									<div class="card card-table mb-0">
										<div class="card-body">
											<div class="table-responsive">
												<table class="datatable table table-hover table-center mb-0">
													<thead>
														<tr>
															<th>Patient Name</th>
															<th>Phone</th>
															<th>Email</th>
															<th>Address</th>

														</tr>
													</thead>
													<tbody>
														<%
															List<Patient> list2 = patientDao.getAllPatient();
															for (Patient p2 : list2) {
														%>
														<tr>
															<td><%=p2.getName()%></td>
															<td><%=p2.getMobileNumber()%></td>
															<td><%=p2.getEmail()%></td>
															<td><%=p2.getPatientProfile().getPatientAddress()%></td>

														</tr>
														<%
															}
														%>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- registered patients -->

								<!-- availible doctors -->
								<div id="pat_billing" class="tab-pane fade">
									<div class="card card-table mb-0">
										<div class="card-body">
											<div class="table-responsive">
												<table class="datatable table table-hover table-center mb-0">
													<thead>
														<tr>
															<th>Doctor Name</th>
															<th>Speciality</th>
															<th>Member Since</th>
															<th>Mobile</th>
															<th>Email</th>


														</tr>
													</thead>
													<tbody>
														<%
															List<Doctor> list3 = dao.getAllDoctor();
															for (Doctor d : list3) {
														%>
														<tr>
															<td>
																<h2 class="table-avatar">

																	<a href="#">Dr.<%=d.getName()%></a>
																</h2>
															</td>
															<%
																SimpleDateFormat dateFormatter = new SimpleDateFormat("dd/MM/yyyy");
																	SimpleDateFormat timeFormatter = new SimpleDateFormat("hh:mm:ss");
																	Date date = d.getJoinDate();
															%>
															<td><%=d.getSpeciality()%></td>

															<td><%=dateFormatter.format(date)%><br> <small><%=timeFormatter.format(date)%></small></td>

															<td><%=d.getMobileNumber()%></td>
															<td><%=d.getEmail()%></td>

														</tr>
														<%
															}
														%>

													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- availible doctors -->

							</div>
							<!-- Tab Content -->

						</div>
					</div>
				</div>

			</div>

		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>