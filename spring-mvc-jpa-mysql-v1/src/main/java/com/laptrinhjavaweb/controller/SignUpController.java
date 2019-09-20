package com.laptrinhjavaweb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.laptrinhjavaweb.model.SignUpForm;

@Controller
public class SignUpController {

	/**
	 * Tạo một đối tượng signUpForm
	 * 
	 * @return SignUpForm
	 */
	@ModelAttribute("signUpForm")
	public SignUpForm setSignUpForm() {
		return new SignUpForm();
	}
	
	/**
	 * Hiển thị HTML form
	 * 
	 * @return String
	 */
	@GetMapping("/showSignUpForm")
	public String showForm() {
		return "signup-form";
	}
	
	/**
	 * Tạo user
	 * 
	 * @param signUpForm
	 * @param model
	 * @return String
	 */
	@PostMapping("/saveSignUpForm")
	public String saveUser(@ModelAttribute("signUpForm") SignUpForm signUpForm, Model model) {

		System.out.println("Username : " + signUpForm.getUserName());
		System.out.println("Password : " + signUpForm.getPassword());
		System.out.println("Email : " + signUpForm.getEmail());

		model.addAttribute("message", "User SignUp successfully.");
		model.addAttribute("user", signUpForm);

		return "signup-success";
	}

}
