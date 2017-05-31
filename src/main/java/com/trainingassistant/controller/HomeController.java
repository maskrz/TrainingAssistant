package com.trainingassistant.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trainingassistant.service.configuration.ConfigurationService;
import com.trainingassistant.service.configuration.PropertyName;

@Controller("HomeController")
public class HomeController {

	@Autowired
	ConfigurationService configurationService;

	@RequestMapping("/welcome")
	public @ResponseBody Wrapper helloWorld() {

		String message = getConfigurationService().getProperty(PropertyName.WELCOME_TEXT);
		return new Wrapper(message);
	}

	@RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
         
        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
         
        String formattedDate = dateFormat.format(date);
         
        model.addAttribute("serverTime", formattedDate );
         
        return "home";
    }
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String about(Model model) {
        return "contact";
    }

	public ConfigurationService getConfigurationService() {
		return configurationService;
	}

	public void setConfigurationService(ConfigurationService configurationService) {
		this.configurationService = configurationService;
	}
}
