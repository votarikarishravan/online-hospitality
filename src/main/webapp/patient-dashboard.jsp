<%@page import="com.shravan.hms.model.Appointment"%>
<%@page import="com.shravan.hms.model.Doctor"%>
<%@page import="com.shravan.hms.dao.AppointmentDao"%>
<%@page import="com.shravan.hms.dao.DoctorDao"%>
<%@page import="java.util.List"%>
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
						<div class="card-body pt-0">

							<!-- Tab Menu -->
							<nav class="user-tabs mb-4 border pt-1">
								<ul class="nav nav-tabs nav-tabs-bottom nav-justified ">
									<li class="nav-item"><a class="nav-link active"
										href="#pat_appointments" data-toggle="tab">My Appointments</a>
									</li>
									<li class="nav-item"><a class="nav-link"
										href="#pat_prescriptions" data-toggle="tab">Prescriptions</a>
									</li>
									<!-- <li class="nav-item">
                                    <a class="nav-link" href="#pat_medical_records" data-toggle="tab"><span class="med-records">Medical Records</span></a>
                                </li> -->

								</ul>
							</nav>
							<!-- /Tab Menu -->

							<!-- Tab Content -->
							<div class="tab-content pt-0">

								<!-- Appointment Tab -->
								<div id="pat_appointments" class="tab-pane fade show active">
									<div class="card card-table mb-0">
										<div class="card-body">
											<div class="table-responsive">
												<table class="table table-hover table-center mb-0">
													<thead>
														<tr>
															<th>Doctor</th>
															<th>Applied Date</th>
															<th>Booking Date</th>
															<th>Time Slot</th>
															<th>Status</th>
														</tr>
													</thead>
													<tbody>
														<%
															Long pId = (Long) session.getAttribute("patientId");
															AppointmentDao aDao = new AppointmentDao();
															List<Appointment> list = aDao.getAppointmentByPatientId(pId);
															DoctorDao dao = new DoctorDao();
															for (Appointment a : list) {
														%>
														<tr>
															<td>
																<h2 class="table-avatar">
																	<a href=""><%=dao.getDoctorById(a.getDoctorId()).getName()%></a>
																</h2>
															</td>

															<td><%=a.getCreatedOn()%></td>
															<td><%=a.getBookingDate()%></td>
															<td><%=a.getTimeSlot()%></td>
															<td>
																<%
																	String status = a.getStatus();
																		if (status.equals("accepted")) {
																%>
																 <span class="badge badge-pill badge-success">Confirm</span>
																<%
																	}else if(status.equals("cancel")){
																%>
																<span class="badge badge-pill badge-danger">Cancelled</span>
																<%}else{ %>
																<span class="badge badge-pill badge-info">Waiting</span>
																<%} %>
																
															</td>
															
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
								<!-- /Appointment Tab -->

								<!-- Prescription Tab -->
								<div class="tab-pane fade" id="pat_prescriptions">
									<div class="card card-table mb-0">
										<div class="card-body">
											<div class="table-responsive">
												<table class="table table-hover table-center mb-0">
													<thead>
														<tr>
															<th>Date</th>
															<th>Name</th>
															<th>Created by</th>
															<th></th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>dd MM yyyy</td>
															<td>Prescription 1</td>
															<td>
																<h2 class="table-avatar">

																	<a href="doctor-profile.html">Dr. ----- <span>Dental</span></a>
																</h2>
															</td>
															<td class="text-right">
																<div class="table-action">
																	<a href="javascript:void(0);"
																		class="btn btn-sm bg-primary-light"> <i
																		class="fas fa-print"></i> Print
																	</a> <a href="javascript:void(0);"
																		class="btn btn-sm bg-info-light"> <i
																		class="far fa-eye"></i> View
																	</a>
																</div>
															</td>
														</tr>

													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								<!-- /Prescription Tab -->


							</div>
							<!-- Tab Content -->

						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
	<!-- /Page Content -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>