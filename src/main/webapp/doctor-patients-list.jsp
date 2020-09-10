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
			
			<jsp:include page="patients-list.jsp"></jsp:include>
			
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>