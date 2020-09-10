<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
        <nav class="navbar navbar-expand-lg navbar-light bg-light header-nav mx-auto">
			<a class="navbar-brand" href="index.html"><img src="images/HMS-logo.png"/></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			  </button>
			<div class="collapse navbar-collapse " id="navbarSupportedContent">
			  <ul class="navbar-nav mr-auto">
				<li class="nav-item active">
				  <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="...">Book Appointment</a>
				  </li>
                  <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					  Administration
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					  <a class="dropdown-item" href="#">Admin</a>
					  <a class="dropdown-item" href="#">Doctor</a>
					  <a class="dropdown-item" href="#">Receptionist</a>
					</div>
				  </li>
				 
				
			  </ul>
              <ul class="nav header-navbar-rht">
                
                <!-- User Menu -->
                <li class="nav-item dropdown has-arrow logged-item">
                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown" aria-expanded="false">
                        <span class="user-img">
                            <img class="rounded-circle" src="images/avatar.png" width="31" alt="profile img">
                        </span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        
                        <a class="dropdown-item" href="patient-dashboard.jsp">Dashboard</a>
                        <a class="dropdown-item" href="profile-settings.jsp">Profile Settings</a>
                        <a class="dropdown-item" href="LogOut">Logout</a>
                    </div>
                </li>
                <!-- /User Menu -->
                
            </ul>			  <!-- <button type="button" class="btn btn-secondary">Login/SignUp</button> -->
			  
			</div>
		  </nav><!--  nav-bar -->