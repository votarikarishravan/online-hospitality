<%@page import="org.apache.el.lang.ELSupport"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<nav
	class="navbar navbar-expand-lg navbar-light bg-light header-nav mx-auto">
	<a class="navbar-brand" href="index.jsp"><img
		src="images/HMS-logo.png" /></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse " id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link  text-primary"
				href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link text-info"
				href="home-book-appointment.jsp">Book Appointment</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle text-info" href="#"
				id="navbarDropdown" role="button" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Administration </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item text-info" href="admin-login.jsp">Admin</a>
					<a class="dropdown-item text-info" href="doctor-login.jsp">Doctor</a>
					<a class="dropdown-item text-info" href="reception-login.jsp">Rececptionist</a>
				</div></li>

		</ul>
		<%
			if (session.getAttribute("LOGIN") == null) {
		%>
		<h5 class="mx-3">patient?</h5>
		<a class="nav-link header-login " href="login.jsp">login / Signup
		</a>
		<%
			} else if (session.getAttribute("LOGIN").equals("PATIENT")) {
		%>
		<ul class="nav header-navbar-rht">

			<!-- User Menu -->
			<li class="nav-item dropdown has-arrow logged-item"><a href="#"
				class="dropdown-toggle nav-link" data-toggle="dropdown"
				aria-expanded="false"> <span class="user-img"> <img
						class="rounded-circle" src="images/avatar.png" width="31"
						alt="profile img">
				</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right">

					<a class="dropdown-item" href="patient-dashboard.jsp">Dashboard</a>
					<a class="dropdown-item" href="profile-settings.jsp">Profile
						Settings</a> <a class="dropdown-item" href="LogOut">Logout</a>
				</div></li>
			<!-- /User Menu -->

		</ul>
		<%
			} else if (session.getAttribute("LOGIN").equals("ADMIN")) {
		%>
		<ul class="nav header-navbar-rht">

			<!-- User Menu -->
			<li class="nav-item dropdown has-arrow logged-item"><a href="#"
				class="dropdown-toggle nav-link" data-toggle="dropdown"
				aria-expanded="false"> <span class="user-img"> <img
						class="rounded-circle" src="images/avatar.png" width="31"
						alt="profile img">
				</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right">

					<a class="dropdown-item" href="admin-dashboard.jsp">Dashboard</a> <a
						class="dropdown-item" href="admin-profile-settings.jsp">Profile
						Settings</a> <a class="dropdown-item" href="LogOut">Logout</a>
				</div></li>
			<!-- /User Menu -->

		</ul>
		<%
			} else if (session.getAttribute("LOGIN").equals("DOCTOR")) {
		%>
		<ul class="nav header-navbar-rht">

			<!-- User Menu -->
			<li class="nav-item dropdown has-arrow logged-item"><a href="#"
				class="dropdown-toggle nav-link" data-toggle="dropdown"
				aria-expanded="false"> <span class="user-img"> <img
						class="rounded-circle" src="images/avatar.png" width="31"
						alt="profile img">
				</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right">

					<a class="dropdown-item" href="doctor-dashboard.jsp">Dashboard</a>

					<a class="dropdown-item" href="LogOut">Logout</a>
				</div></li>
			<!-- /User Menu -->

		</ul>

		<%
			} else if (session.getAttribute("LOGIN").equals("RECEPTIONIST")) {
		%>
		<ul class="nav header-navbar-rht">

			<!-- User Menu -->
			<li class="nav-item dropdown has-arrow logged-item"><a href="#"
				class="dropdown-toggle nav-link" data-toggle="dropdown"
				aria-expanded="false"> <span class="user-img"> <img
						class="rounded-circle" src="images/avatar.png" width="31"
						alt="profile img">
				</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right">

					<a class="dropdown-item" href="reception.jsp">Dashboard</a>

					<a class="dropdown-item" href="LogOut">Logout</a>
				</div></li>
			<!-- /User Menu -->

		</ul>

		<%
			}
		%>
	</div>

</nav>
<!--  nav-bar -->