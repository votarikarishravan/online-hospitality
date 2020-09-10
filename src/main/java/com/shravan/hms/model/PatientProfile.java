package com.shravan.hms.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="patient_profile")
public class PatientProfile {
	
	@Id
	@GeneratedValue
	private int id;
	private byte[] patientImage;
	private String patientFirstName;
	private String patientLastName;
	private String patientDob;
	private String patientBloodGroup;
	private String patientAddress;
	private String patientCity;
	private String patientState;
	private String patientZip;
	private String patientCountry;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public byte[] getPatientImage() {
		return patientImage;
	}

	public void setPatientImage(byte[] patientImage) {
		this.patientImage = patientImage;
	}

	public String getPatientFirstName() {
		return patientFirstName;
	}

	public void setPatientFirstName(String patientFirstName) {
		this.patientFirstName = patientFirstName;
	}

	public String getPatientLastName() {
		return patientLastName;
	}

	public void setPatientLastName(String patientLastName) {
		this.patientLastName = patientLastName;
	}

	public String getPatientDob() {
		return patientDob;
	}

	public void setPatientDob(String patientDob) {
		this.patientDob = patientDob;
	}

	public String getPatientBloodGroup() {
		return patientBloodGroup;
	}

	public void setPatientBloodGroup(String patientBloodGroup) {
		this.patientBloodGroup = patientBloodGroup;
	}

	public String getPatientAddress() {
		return patientAddress;
	}

	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}

	public String getPatientCity() {
		return patientCity;
	}

	public void setPatientCity(String patientCity) {
		this.patientCity = patientCity;
	}

	public String getPatientState() {
		return patientState;
	}

	public void setPatientState(String patientState) {
		this.patientState = patientState;
	}

	public String getPatientZip() {
		return patientZip;
	}

	public void setPatientZip(String patientZip) {
		this.patientZip = patientZip;
	}

	public String getPatientCountry() {
		return patientCountry;
	}

	public void setPatientCountry(String patientCountry) {
		this.patientCountry = patientCountry;
	}

}
