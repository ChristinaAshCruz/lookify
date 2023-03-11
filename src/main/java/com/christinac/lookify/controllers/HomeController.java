package com.christinac.lookify.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	// song table jsp
	@GetMapping("/dashboard")
	public String dashboard() {
		return "dashboard.jsp";
	}
	
	// add song jsp
	@GetMapping("/song/new")
	public String addSong() {
		return "addSong.jsp";
	}
	
	// song details jsp
//	@GetMapping("/song/{id}")
	//temp route
	@GetMapping("/song/view")
	public String viewSong() {
		return "viewSong.jsp";
	}
	
}
