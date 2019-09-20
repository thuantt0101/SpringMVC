package com.laptrinhjavaweb.controller;

import java.time.LocalDateTime;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.laptrinhjavaweb.model.HelloWorld;

@Controller
public class HelloWorldController {

	@GetMapping("/helloWorld")
	public String handler(Model model) {
		System.out.println("helloWorld is called");
		HelloWorld helloWorld = new HelloWorld();
		helloWorld.setMessage("hello world example using Spring MVC 5!!!");
		helloWorld.setDateTime(LocalDateTime.now().toString());

		System.out.println(helloWorld.getMessage());
		System.out.println(helloWorld.getDateTime());

		model.addAttribute("helloWorld", helloWorld);

		// view (helloWorld.jsp).
		return "helloworld";
	}
}
