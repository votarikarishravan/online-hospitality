package com.shravan.hms;



import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.shravan.hms.dao.AdminDao;
import com.shravan.hms.dao.AppointmentDao;
import com.shravan.hms.dao.DoctorDao;
import com.shravan.hms.dao.PatientDao;
import com.shravan.hms.model.Admin;
import com.shravan.hms.model.AdminProfile;
import com.shravan.hms.model.Appointment;
import com.shravan.hms.model.Doctor;
import com.shravan.hms.model.Patient;
import com.shravan.hms.model.PatientProfile;
import com.shravan.hms.model.User;
import com.shravan.hms.model.Vehicle;
import com.shravan.hms.util.HibernateUtil;

public class Dump {

	public static void main(String[] args) {
		
		

		// PatientDao dao = new PatientDao();
		/*
		 * String name =
		 * dao.getPatient("shravan@gmail.com").getPatientProfile().getPatientFirstName()
		 * ; System.out.println(name);
		 */
			
		Session session = HibernateUtil.getSession(); 
		/*Transaction transaction = session.beginTransaction();
		 *//*
		 * Patient patient = new Patient(); PatientProfile pProfile = new
		 * PatientProfile();
		 * 
		 * patient.setName("onen"); patient.setMobileNumber(1234L);
		 * patient.setEmail("onee"); patient.setPassword("onep");
		 * 
		 * patient.setPatientProfile(pProfile);
		 * 
		 * new PatientDao().savePatient(patient);
		 */
		/*
		 * Patient patient = new Patient(); PatientProfile profile = new
		 * PatientProfile(); patient.setMobileNumber(12345678L);
		 * patient.setName("name"); patient.setEmail("email");
		 * profile.setPatientFirstName("firstname"); patient.setPatientProfile(profile);
		 * 
		 * session.save(patient); session.save(profile);
		 */
		// transaction.commit();
//-----------------------------------------------------------------------------------------------

		/*
		 * PatientDao dao = new PatientDao();
		 * 
		 * Long number = dao.getPatient("email").getMobileNumber();
		 * System.out.println("LOG : "+number); Patient patient =
		 * session.get(Patient.class, 12345678L); System.out.println("LOG2 : "+patient);
		 * patient.setEmail("amail");
		 * patient.getPatientProfile().setPatientFirstName("afirstname");
		 * session.update(patient);
		 * 
		 * transaction.commit(); session.close();
		 */
// ------------------------------------------------------		  
		/*
		 * PatientProfile profile = session.get(Patient.class,
		 * 9898789809L).getPatientProfile(); System.out.println(profile);
		 */
//----------------------------------------------------------		  
		/*
		 * User user = session.get(User.class, 1);
		 * 
		 * String vehicleName = user.getVehicle().getVehicleName();
		 * System.out.println(vehicleName);
		 */
		/*
		 * List<User> list = session.createQuery("FROM User").getResultList(); for(User
		 * u: list) { System.out.println(u.getName()+" : "+u.getDate());
		 * SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy"); Date date =
		 * u.getDate(); System.out.println(formatter.format(date));
		 * 
		 * }
		 */
	
	//-----------------------------------------------------------		  

		/*
		 * Admin admin = new Admin(); AdminProfile profile = new AdminProfile(); int
		 * adminId=001; admin.setId(adminId); admin.setUsername("Admin");
		 * admin.setPassword("admin@1234");
		 * 
		 * profile.setFirstName("fname"); profile.setLastName("lname");
		 * admin.setAdminProfile(profile); new AdminDao().saveAdmin(admin);
		 */

		/*
		 * User user = new User(); Vehicle vehicle = new Vehicle();
		 * 
		 * user.setId(112); user.setDate(new Date()); user.setName("shravan");
		 * vehicle.setVehicleName("pulsur"); user.setVehicle(vehicle);
		 * 
		 * session.save(user); session.save(vehicle);
		 */

		//transaction.commit();

		// Admin admin = HibernateUtil.getSession().get(Admin.class, "A001");
		// System.out.println(admin.getId());
	//--------------------------------------------------------------------------
		
		List<Appointment> list = new AppointmentDao().getCurrentDayAppointment();
		
		for(Appointment a : list) {
			System.out.println(a.getPatientId());
		}
	}

}
