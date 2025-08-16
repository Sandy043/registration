package com.example.Demo.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.Demo.Entity.Manager;
import com.example.Demo.Services.mservice;

@Controller
public class Home_Controller 
{
	@Autowired
	mservice ms;
	
	@RequestMapping("/")
	public String one(Model model) {
	    // Add a new empty Manager object to the model
	    model.addAttribute("m1", new Manager());
	    return "index";
	}

	@PostMapping("/next")
	public String getData(@Valid @ModelAttribute("m1") Manager m1, BindingResult result)
	{
		if(result.hasErrors())
		{
			// If validation fails, go back to the form page
			return "index";
		}
		
		// If no errors, save data
		ms.register(m1);
		
		return null;
		
	}
}
