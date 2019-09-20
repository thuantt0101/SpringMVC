package com.laptrinhjavaweb.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

public class Customer {

	private String firstName;
	
	@NotNull(message="không được để trống")
	@Size(min = 1,message = "không được để trống")
	private String lastName;
	
	@NotNull(message = "không được để trống")
	@Min(value = 0,message = "phải lớn hơn hoặc bằng 0")
	@Max(value = 10,message = "phải nhỏ hơn hoặc bằng 10")
	private Integer freePasses;
	
	
	@Pattern(regexp = "^[a-zA-Z0-9]{5}",message = "5 ký tự hoặc số")
	private String postalCode;
	
	@NotNull(message = "không được để trống")
	@Email(message = "không đúng định dạng email,vui lòng nhập lại email")
	private String email;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Integer getFreePasses() {
		return freePasses;
	}

	public void setFreePasses(Integer freePasses) {
		this.freePasses = freePasses;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
