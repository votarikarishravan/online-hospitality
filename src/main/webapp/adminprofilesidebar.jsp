<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<!-- Page Content -->
<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">

	<!-- Profile Sidebar -->

	<div class="profile-sidebar card">
		<div class="widget-profile pro-widget-content">
			<div class="profile-info-widget">
				<a href="" class="booking-doc-img"> <img src="images/avatar.png"
					alt="User Image">
				</a>
				<div class="profile-det-info">
					<h3>Administrator</h3>
					<div class="patient-details">
						<h5>
							<i class="fas fa-birthday-cake"></i>Birth Date
						</h5>
						<h5 class="mb-0">
							<i class="fas fa-map-marker-alt"></i>Address
						</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="dashboard-widget ">
			<nav class="dashboard-menu">
				<ul class="list-group list-group-flush">
					<li class=" list-group-item"><a href="admin-dashboard.jsp">
							<i class="fas fa-columns"></i> <span class="text-primary">Dashboard</span>
					</a></li>
					<li class="list-group-item"><a href="admin-profile-settings.jsp">
							<i class="fas fa-user-cog"></i> <span class="text-primary">Profile Settings</span>
					</a></li>
					<li class=" list-group-item ">
						<div id="one">
							<div class="active-hover" data-toggle="collapse"
								data-target="#collapseOne">
								<span class="text-primary">Doctors</span>
								<svg width="1em" height="1em" viewBox="0 0 16 16"
									class="bi bi-caret-down-fill float-right" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                                                    <path
										d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                                </svg>
							</div>
							<div id="collapseOne" class="collapse" data-parent="#one">
								<ul class="list-group list-group-flush">
									<li class="list-group-item"><a href="admin-add-doctor.jsp" class="text-primary">add new doctor</a></li>
									<li class="list-group-item"><a href="admin-doctor-list.jsp" class="text-primary">view all
											doctor</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class=" list-group-item ">
						<div id="appointment">
							<div class="active-hover" data-toggle="collapse"
								data-target="#collapseTwo">
								<span class="text-primary">Appointments</span>
								<svg width="1em" height="1em" viewBox="0 0 16 16"
									class="bi bi-caret-down-fill float-right" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                                                    <path
										d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                                </svg>
							</div>
							<div id="collapseTwo" class="collapse" data-parent="#appointment">
								<ul class="list-group list-group-flush">
									<li class="list-group-item"><a href="admin-book-appointment.jsp" class="text-primary">book
											appointment</a></li>
									<li class="list-group-item"><a href="admin-appointments-list.jsp" class="text-primary">view all
											appointments</a></li>
								</ul>
							</div>
						</div>
					</li>


					<li class=" list-group-item ">
						<div id="appointment">
							<div class="active-hover" data-toggle="collapse"
								data-target="#collapseThree">
								<span class="text-primary">Receptionist</span>
								<svg width="1em" height="1em" viewBox="0 0 16 16"
									class="bi bi-caret-down-fill float-right" fill="currentColor"
									xmlns="http://www.w3.org/2000/svg">
                                                    <path
										d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                                </svg>
							</div>
							<div id="collapseThree" class="collapse"
								data-parent="#appointment">
								<ul class="list-group list-group-flush">
									<li class="list-group-item"><a href="admin-add-receptionist.jsp" class="text-primary">add new
											receptionist</a></li>
									<li class="list-group-item"><a href="admin-reception-list.jsp" class="text-primary">view all
											receptionist</a></li>
								</ul>
							</div>
						</div>
					</li>

					<li class="list-group-item"><a href="admin-patients-list.jsp">
							<i class="fas fa-user-cog"></i> <span class="text-primary">Patients</span>
					</a></li>
					<li class="list-group-item"><a
						href="change-patient-password.jsp"> <i class="fas fa-lock"></i>
							<span class="text-primary">Change Password</span>
					</a></li>

					<li class="list-group-item">
					<a href="LogOut"> 
					<i class="fas fa-sign-out-alt"></i> <span class="text-primary">Logout</span>
					</a>
					</li>
				</ul>
			</nav>
		</div>

	</div>

</div>