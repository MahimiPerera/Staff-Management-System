package com.staff.Model;

public class FManager {
private int id;
private String name;
private String username;
private String email;
private String datejoined;
private String phone;
private String nic;
private String address;
private String qualifications;
private String experience;
private String password;

//constructor
public FManager(int id, String name, String username, String email, String datejoined, String phone, String nic,
		String address, String qualifications, String experience, String password) {
	 
	this.id = id;
	this.name = name;
	this.username = username;
	this.email = email;
	this.datejoined = datejoined;
	this.phone = phone;
	this.nic = nic;
	this.address = address;
	this.qualifications = qualifications;
	this.experience = experience;
	this.password = password;
}

//getters
public int getId() {
	return id;
}

public String getName() {
	return name;
}

public String getUsername() {
	return username;
}

public String getEmail() {
	return email;
}

public String getDatejoined() {
	return datejoined;
}

public String getPhone() {
	return phone;
}

public String getNic() {
	return nic;
}

public String getAddress() {
	return address;
}

public String getQualifications() {
	return qualifications;
}

public String getExperience() {
	return experience;
}

public String getPassword() {
	return password;
}

}

