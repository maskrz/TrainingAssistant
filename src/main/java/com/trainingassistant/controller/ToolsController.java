package com.trainingassistant.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("ToolsController")
@RequestMapping(value = "/tools")
public class ToolsController {

	
	@RequestMapping(value = "/wsr", method = RequestMethod.GET)
    public String wsr(Model model) {
        return "wsr";
    }
	
	@RequestMapping(value = "/are", method = RequestMethod.GET)
    public String are(Model model) {
        return "are";
    }
	
	@RequestMapping(value = "/pace", method = RequestMethod.GET)
    public String pace(Model model) {
        return "pace";
    }
	
	@RequestMapping(value = "/journal", method = RequestMethod.GET)
    public String journal(Model model) {
        return "journal";
    }
}
