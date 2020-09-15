<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.shravan.hms.model.Doctor"%>
<%@page import="com.shravan.hms.dao.DoctorDao"%>
<!DOCTYPE html>


<%
	List<Doctor> list = new DoctorDao().getAllDoctor();
	for (Doctor d : list) {
		int id = d.getId();
%>
<!-- Doctor Widget -->
<div class="card">

	<div class="card-body">
		<form action="BookAppointment">
			<div class="doctor-widget">

				<div class="doc-info-left" style="display: inline-flex;">

					<div class="doc-info-cont ml-3 my-auto">

						<input type="hidden" value="<%=id%>" name="id">
						<h4 class="doc-name  text-info">
							Dr.<input class="border-0  text-info" readonly="readonly"
								value="<%=d.getName()%>">
						</h4>
						<p class="">Timings : 09:00 AM - 12-00 PM</p>
						<h5 class="doc-department"><%=d.getSpeciality()%></h5>
					</div>
				</div>
				<div class="doc-info-right my-auto">
					<div class="clinic-booking">
						<!-- <a class="btn btn-info mb-3" href="doctor-profile.html">View
							Profile</a> --> <a class="btn btn-primary" data-toggle="collapse"
							href="#collapse<%=id%>">Book Appointment</a>

					</div>
				</div>

			</div>
			<div class="collapse" id="collapse<%=id%>">
				<div class="card card-body">
					<h4>patient mobile number</h4>
                  <input type="number" name="mobile" required>
                  <hr>
                  <h4>Choose Date and Time</h4>
					<input type="date" name="date" required> 
					<select
						class="form-control select my-2" name="time" required>
						<option>choose time slot</option>
						<option>09:00-10:00</option>
						<option>10:00-11:00</option>
						<option>11:00-12:00</option>
					</select>
					<button class="btn btn-primary" type="submit">Book</button>
				</div>
			</div>
		</form>
	</div>

</div>
	<%
		}
	%>


