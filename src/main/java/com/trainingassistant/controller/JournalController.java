package com.trainingassistant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.trainingassistant.service.configuration.ConfigurationService;
import com.trainingassistant.service.configuration.PropertyName;

@Controller("JournalController")
@RequestMapping(value = "/tools")
public class JournalController {


	@Autowired
	ConfigurationService configurationService;

	@RequestMapping(value ="/loadColors", method = RequestMethod.POST )
	public @ResponseBody Wrapper helloWorld() {
		String message = getConfigurationService().getProperty(PropertyName.COLORS);
		return new Wrapper(message);
	}
    
	public ConfigurationService getConfigurationService() {
		return configurationService;
	}

	public void setConfigurationService(ConfigurationService configurationService) {
		this.configurationService = configurationService;
	}
}
