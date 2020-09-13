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

			<div class="row">
			<jsp:include page="adminprofilesidebar.jsp"></jsp:include>
			<div class="col-md-7 col-lg-8 col-xl-9">
			
			<jsp:include page="book-appointment.jsp"></jsp:include>
			
			</div>
			</div>
		</div>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>