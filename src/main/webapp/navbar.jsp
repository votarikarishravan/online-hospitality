<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light header-nav mx-auto">
			<a class="navbar-brand" href="index.jsp"><img src="images/HMS-logo.png"/></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
			  <ul class="navbar-nav mr-auto">
				<li class="nav-item active">
				  <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
				</li>
				  <li class="nav-item">
					<a class="nav-link" href="home-book-appointment.jsp">Book Appointment</a>
				  </li>
				  <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  Administration
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					  <a class="dropdown-item" href="admin-login.jsp">Admin</a>
					  <a class="dropdown-item" href="doctor-login.jsp">Doctor</a>
					  <a class="dropdown-item" href="reception-login.jsp">Rececptionist</a>
					</div>
				  </li>
				 
				</ul>
			  
			  <h5 class="mx-3">patient? </h5><a class="nav-link header-login " href="login.jsp">login / Signup </a>
			  
			</div>
			
		  </nav><!--  nav-bar -->