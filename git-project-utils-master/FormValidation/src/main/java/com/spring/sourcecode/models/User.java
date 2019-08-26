package com.spring.sourcecode.models;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;



@Component
public class User {
	
	@NotNull
	@Min(1)
	private Integer id;
	
	@NotEmpty(message="User Name field is Mandatory.")
	@NotNull
    @Size(min=2, max=30)
	private String name;
	
	@NotNull
    @Min(18)
	private Integer age;
	
	@NotEmpty(message="User Email field is Mandatory.")
	@Email
	private String email;
	
	@NotNull
	@NotEmpty(message="User Password field is Mandatory.")
	@Size(min=6, max=10, message="Message requires minimum 6 digits and maximum 10 digits")
	private String password;
	
	@NotEmpty(message="User Contact field is Mandatory.")
	private String ContactNumber;
	
	public Integer getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getContactNumber() {
		return ContactNumber;
	}

	public void setContactNumber(String contactNumber) {
		ContactNumber = contactNumber;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
