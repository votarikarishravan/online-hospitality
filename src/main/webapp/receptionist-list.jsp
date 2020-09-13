<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
					<div class="card">
						<div class="card-body">
							<div class="table-responsive">
								<table class="datatable table table-hover table-center mb-0">
									<thead>
										<tr>
											<th>Receptionist Name</th>
											<th>Member Since</th>
											<th>Earned</th>
											<th>Action</th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<h2 class="table-avatar">

													<a href="profile.html">Dr. Ruby Perrin</a>
												</h2>
											</td>
											<td>14 Jan 2019 <br>
											<small>02.59 AM</small></td>

											<td>$3100.00</td>

											<td>
												<div class="status-toggle">
													<button type="button" class="btn btn-danger">delete</button>
												</div>
											</td>
										</tr>

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