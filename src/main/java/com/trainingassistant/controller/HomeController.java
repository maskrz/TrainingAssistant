package com.trainingassistant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trainingassistant.service.configuration.ConfigurationService;
import com.trainingassistant.service.configuration.PropertyName;

@Controller("HomeController")
public class HomeController {

	@Autowired
	ConfigurationService configurationService;

	@RequestMapping("/welcome")
	public ModelAndView helloWorld() {
 
		String message = getConfigurationService().getProperty(PropertyName.WELCOME_TEXT);
		return new ModelAndView("welcome", "message", message);
	}
	
	public ConfigurationService getConfigurationService() {
		return configurationService;
	}

	public void setConfigurationService(ConfigurationService configurationService) {
		this.configurationService = configurationService;
	}
}
