<%@page import="com.shravan.hms.dao.DoctorDao"%>
<%@page import="com.shravan.hms.dao.PatientDao"%>
<%@page import="com.shravan.hms.model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.shravan.hms.dao.AppointmentDao"%>
<%@page import="com.shravan.hms.model.Appointment"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>

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
							<th>Status</th>

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
									<a href="profile.html" class="avatar avatar-sm mr-2"></a> <a
										href="profile.html"><%=new PatientDao().getPatientById(a.getPatientId()).getName()%>
									</a>
								</h2>
							</td>
							<td><%=a.getBookingDate()%> <span
								class="text-primary d-block">Time slot: <%=a.getTimeSlot()%></span></td>
							<td>
								<div class="status-toggle"><%=a.getStatus()%></div>
							</td>
							<!-- <td class="text-right">$200.00</td> -->
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
