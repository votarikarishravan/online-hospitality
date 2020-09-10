<html>
<!-- head tag -->
<jsp:include page="header.jsp"></jsp:include>
<!-- /head tag -->
	<body>
	<!-- navigation bar -->
		<jsp:include page="navbar.jsp"></jsp:include>
	<!-- /navigation bar -->
		 <div class="container "><!--carosoul container-->
		  <div  class="carousel slide" data-ride="carousel"><!--carousel slide-->
			
			<div class="carousel-inner">
			  <div class="carousel-item active">
				<img src="images/img3.jpg" class="d-block w-100" alt="...">
			  </div>
			  <div class="carousel-item">
				<img src="images/img1.jpg" class="d-block w-100" alt="...">
			  </div>
			  <div class="carousel-item">
				<img src="images/img2.jpg" class="d-block w-100" alt="...">
			  </div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
			  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			  <span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
			  <span class="carousel-control-next-icon" aria-hidden="true"></span>
			  <span class="sr-only">Next</span>
			</a>
		  </div><!--carousel slide-->
		 </div><!--carosoul container-->
		 <div class="container text-center border-dark specialites-wrap">
			<div style="background-color: #17A2B8; padding:10px; color: lightyellow;">
			<h1>Specialities</h1>
			 <p>We offer patients advanced health care solutions that follows international standards,<br>below specified specialites such as Dentist, Urology, Neurology, Cardiologist, Orthopedic </p>
			</div> 
		 <div class="row justify-content-center speciality-row ">
			 <div class="speciality-item text-center col-sm" style="width: 100%; display: inline-block;">
				 <div class="speciality-img">
					 <img src="images/specialities-01.png" class="img-fluid"/>
				</div>
				<p >Urology</p>
			 </div>
			 <div class="speciality-item text-center col-sm" style="width: 100%; display: inline-block;">
				<div class="speciality-img">
					<img src="images/specialities-02.png" class="img-fluid"/>
			   </div>
			   <p>Neurology</p>
			</div>
			<div class="speciality-item text-center col-sm" style="width: 100%; display: inline-block;">
				<div class="speciality-img">
					<img src="images/specialities-03.png" class="img-fluid"/>
			   </div>
			   <p>Orthopedic</p>
			</div>
			<div class="speciality-item text-center col-sm" style="width: 100%; display: inline-block;">
				<div class="speciality-img">
					<img src="images/specialities-04.png" class="img-fluid"/>
			   </div>
			   <p>Cardiologist</p>
			</div>
			<div class="speciality-item text-center col-sm" style="width: 100%; display: inline-block;">
				<div class="speciality-img">
					<img src="images/specialities-05.png" class="img-fluid"/>
			   </div>
			   <p>Dentist</p>
			</div>
		 </div>
		 </div>
		  
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>