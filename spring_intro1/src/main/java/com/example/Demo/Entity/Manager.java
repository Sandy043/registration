package com.example.Demo.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
public class Manager 
{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int mid;
	
	@NotBlank(message = "Name is required")
	private String mname;
	
	@Email(message = "Invalid email format")
	@NotBlank(message = "Email is required")
	private String memail;
	
	@Size(min = 15, message = "Password must be at least 15 characters")
	private String mpass;
	
	@Size(min = 15, message = "Password must be at least 15 characters")
	private String Rtypass;
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getRtypass() {
		return Rtypass;
	}
	public void setRtypass(String rtypass) {
		Rtypass = rtypass;
	}
	
	
	
}
