<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
</head>
<jsp:include page="navbar.jsp"></jsp:include>
<body>
	<!-- Page Content -->
	<div class="content success-page-cont" style="align-items: center;">
		<div class="container-fluid">

			<div class="row justify-content-center">
				<div class="col-lg-6">

					<!-- Success Card -->
					<div class="card success-card">
						<div class="card-body">
							<div class="success-cont text-center">
							<div class=""><img src="<%= request.getAttribute("image")%>"/></div>
								<h3><%=request.getAttribute("header")%></h3>
								<p>
									<strong>
									<%= request.getAttribute("message") %>
									</strong>
								</p>
	<div><a href="<%=request.getAttribute("href")%>"><%=request.getAttribute("action") %></a></div>
							</div>
						</div>
					</div>
					<!-- /Success Card -->

				</div>
			</div>

		</div>
	</div>
	<!-- /Page Content -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>