<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.shravan.hms.dao.ReceptionDao"%>
<%@ page import="com.shravan.hms.model.Receptionist"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="content">
		<div class="container-fluid">

			<div class="row">
				<jsp:include page="adminprofilesidebar.jsp"></jsp:include>

				<div class="col-md-7 col-lg-8 col-xl-9 theiaStickySidebar">
					<div class="card ">

						<div class="card-body">
							<div class="table-responsive">

								<table class="datatable table table-hover table-center mb-0">
									<thead>
										<tr>
											<th>Id</th>
											<th>Receptionist</th>
											<th>Mobile</th>
											<th>Email</th>
											<th>Joined on</th>
											<th>Action</th>

										</tr>
									</thead>
									<tbody>
										<%
											List<Receptionist> list = new ReceptionDao().getAllReception();
											for (Receptionist r : list) {
										%>
										<tr>
											<td>
												<h2 class="table-avatar">
													<%=r.getId()%>
												</h2>
											</td>
											<td><%=r.getName()%></td>
											<td>
												<h2 class="table-avatar">
													<%=r.getMobile()%>
												</h2>
											</td>
											<td><%=r.getEmail()%></td>
											<td><span><%=r.getJoinedOn()%></span></td>

											<td class="">
												<form method="get" action="DeleteReception">
													<input hidden type="number" value="<%=r.getId()%>" name="recepId">
													<button type="submit" class="btn btn-danger">delele</button>
												</form>
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

			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>