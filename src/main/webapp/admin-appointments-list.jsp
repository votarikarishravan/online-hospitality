<%@page import="com.shravan.hms.dao.DoctorDao"%>
<%@page import="com.shravan.hms.dao.PatientDao"%>
<%@page import="com.shravan.hms.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.shravan.hms.dao.AppointmentDao"%>
<%@page import="com.shravan.hms.model.Appointment"%>
<%@page import="java.util.List"%>
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
							<div class="table-responsive">

								<table class="datatable table table-hover table-center mb-0">
									<thead>
										<tr>
											<th>Doctor Name</th>
											<th>Speciality</th>
											<th>Patient Name</th>
											<th>Apointment Time</th>
											<th class="text-center" colspan="2">Action</th>

										</tr>
									</thead>
									<tbody>
										<%
											DoctorDao dao = new DoctorDao();
											List<Appointment> list = new AppointmentDao().getAllAppointment();

											for (Appointment a : list) {
												Doctor doctor = dao.getDoctorById(a.getDoctorId());
												//					System.out.println(doctor);
										%>
										<tr>
											<td>
												<h2 class="table-avatar">
													<a href="profile.html" class="avatar avatar-sm mr-2"></a> <a
														href="profile.html">Dr.<%=doctor.getName()%></a>
												</h2>
											</td>
											<td><%=doctor.getSpeciality()%></td>
											<td>
												<h2 class="table-avatar">
													<a href="profile.html"><%=new PatientDao().getPatientById(a.getPatientId()).getName()%></a>
												</h2>
											</td>
											<td><%=a.getBookingDate()%> <span
												class="text-primary d-block">Time slot: <%=a.getTimeSlot()%></span></td>
											<%
												int appoId = a.getId();
													String status = a.getStatus();
													if (status.equals("waiting")) {
											%>
											<td>
												<form action="UpdateAppoint">
													<input hidden value="<%=appoId%>" name="appoId"> <input
														hidden value="accepted" name="query">
													<div class="status-toggle">
														<button type="submit" class="btn btn-success">Accept</button>
													</div>
												</form>
											</td>
											<td>
												<form action="UpdateAppoint">
													<input hidden value="<%=appoId%>" name="appoId"> <input
														hidden value="cancel" name="query">
													<button type="submit" class="btn btn-danger">Cancel</button>
												</form>
											</td>
											<%
												} else if (status.equals("accepted")) {
											%>
											<td>
												<div class="status-toggle pstatus">
													<img
														src="https://img.icons8.com/doodle/48/000000/checkmark.png" />
												</div>
											</td>
											<td>
												<form action="UpdateAppoint">
													<input hidden value="<%=appoId%>" name="appoId"> <input
														hidden value="cancel" name="query">
													<button type="submit" class="btn btn-danger">Cancel</button>
												</form>
											</td>
											<%
												} else {
											%>
											<td>
												<div class="status-toggle pstatus">
													<img
														src="https://img.icons8.com/fluent/48/000000/delete-sign.png" />
												</div>
											</td>
											<td>-</td>
											<%
												}
											%>
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

			</div>
		</div>
	</div>
	<style>
		.pstatus img {
			width: 30px;
			height: 30px;
		}
	</style>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
