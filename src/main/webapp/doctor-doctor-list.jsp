<%@page import="com.shravan.hms.dao.DoctorDao"%>
<%@page import="com.shravan.hms.model.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>

	<jsp:include page="navbar-doctor.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<jsp:include page="doctorprofilesidebar.jsp"></jsp:include>

				<div class="col-md-7 col-lg-8 col-xl-9 theiaStickySidebar">
					<div class="card">
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
											List<Doctor> list = new DoctorDao().getAllDoctor();
											for (Doctor d : list) {
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
											<td></td>
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
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>