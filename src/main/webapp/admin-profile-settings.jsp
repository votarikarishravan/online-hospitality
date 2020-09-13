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
                <div class="card">
                    <div class="card-body">
                        
                        <!-- Profile Settings Form -->
                        <form action="SaveAdminProfile" method="post" enctype="multipart/form-data">
                            <div class="row form-row">
                                <div class="col-12 col-md-12">
                                    <div class="form-group">
                                        <div class="change-avatar" style="display: inline-flex;">
                                            <div class="profile-img" >
                                                <img src="images/avatar.png" alt="User Image">
                                            </div>
                                            <div class="upload-img text-justify my-auto pl-5">
                                                <div class="change-photo-btn border">
                                                    <span><i class="fa fa-upload"></i> Upload Photo</span>
                                                    <input type="file" class="upload" name="Image">
                                                </div>
                                                <small class="form-text text-muted">Allowed JPG, GIF or PNG. Max size of 2MB</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>First Name</label>
                                        <input type="text" class="form-control" value="
                                        <%=session.getAttribute("FirstName")%>
                                        " name="FirstName">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <input type="text" class="form-control" value="
                                        <%=session.getAttribute("LastName")%>
                                        " name="LastName">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>Date of Birth</label>
                                        <div class="cal-icon">
                                            <input type="text" class="form-control datetimepicker" value="
                                            <%=session.getAttribute("Dob")%>
                                            " name="Dob">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>Blood Group</label>
                                        <select class="form-control select" name="BloodGroup">
                                            <option>
                                            <%=session.getAttribute("BloodGroup")%>
                                            </option>
                                            <option>A-</option>
                                            <option>A+</option>
                                            <option>B-</option>
                                            <option>B+</option>
                                            <option>AB-</option>
                                            <option>AB+</option>
                                            <option>O-</option>
                                            <option>O+</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>Email ID</label>
                                        <input type="email" class="form-control" value="
                                        <%=session.getAttribute("Email")%>
                                        " name="Email">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>Mobile</label>
                                        <input type="text" value="
                                        <%=session.getAttribute("Mobile")%>
                                        " class="form-control" name="Mobile">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                    <label>Address</label>
                                        <input type="text" class="form-control" value="
                                        <%=session.getAttribute("Address")%>
                                        " name="Address">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>City</label>
                                        <input type="text" class="form-control" value="
                                        <%=session.getAttribute("City")%>
                                        " name="City">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>State</label>
                                        <input type="text" class="form-control" value="
                                        <%=session.getAttribute("State")%>
                                        " name="State">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>Zip Code</label>
                                        <input type="text" class="form-control" value="
                                        <%=session.getAttribute("Zip")%>
                                        " name="Zip">
                                    </div>
                                </div>
                                <div class="col-12 col-md-6">
                                    <div class="form-group">
                                        <label>Country</label>
                                        <input type="text" class="form-control" value="
                                        <%=session.getAttribute("Country") %>
                                        " name="Country">
                                    </div>
                                </div>
                            </div>
                            <div class="submit-section">
                                <button type="submit" class="btn btn-primary submit-btn">Save Changes</button>
                            </div>
                        </form>
                        <!-- /Profile Settings Form -->
                        
                    </div>
                </div>
            </div>
			
			
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>