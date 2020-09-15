<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<jsp:include page="header.jsp"></jsp:include>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>
	<!-- Page Content -->
	<div class="content">
		<div class="container-fluid">

			<div class="row mt-4">
				<div class="col-md-5 col-lg-4 col-xl-3 mt-4">
				<h4 class="text-primary">Make an online doctor appointment</h4>
					<ul class="list-unstyled mt-4">
						<li class="media"><img src="images/makeAppointment2.jpg"
							class="mr-3" alt="..." style="width: 100px; height: 100px">
							<div class="media-body">
								<h5 class="mt-0 mb-1 text-success">Choose your doctor</h5>
								choose a doctor and book an appointment pertaining to your
								problem
							</div></li>
						<li class="media my-5">

							<div class="media-body">
								<h5 class="mt-0 mb-1 text-success">Fill appointment form</h5>
								book your appointment with your registered mobile number
							</div> <img src="images/user-registration.jpg" class="mr-3" alt="..."
							style="width: 100px; height: 100px">
						</li>
						<li class="media"><img src="images/booking-confirmed.jpg"
							class="mr-3" alt="..." style="width: 100px; height: 100px">
							<div class="media-body">
								<h5 class="mt-0 mb-1 text-success">Get confirmed</h5>
								do check your account for acceptance from your doctor
							</div></li>
					</ul>
				</div>

				<div class="col-md-7 col-lg-8 col-xl-9">

					<jsp:include page="book-appointment.jsp"></jsp:include>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>