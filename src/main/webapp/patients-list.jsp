<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.shravan.hms.dao.PatientDao" %>
	<%@ page import="java.util.List" %>
	<%@ page import="com.shravan.hms.model.Patient" %>
<!DOCTYPE html>
<div class="col-md-7 col-lg-8 col-xl-9">
                <div class="card">
                    <div class="card-body">
<table class="datatable table table-hover table-center mb-0">
	<thead>
		<tr>
			<th>Patient Name</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Address</th>
			
		</tr>
	</thead>
	<tbody>
	<%
		List<Patient> list = new PatientDao().getAllPatient();
		for(Patient p : list ){
	%>
		<tr>
			<td><%=p.getName() %></td>
			<td>
				<%=p.getMobileNumber() %>
			</td>
			<td><%=p.getEmail() %></td>
			<td><%=p.getPatientProfile().getPatientAddress()%></td>
			
		</tr>
<%} %>
	</tbody>
</table>
</div>
</div>
</div>
