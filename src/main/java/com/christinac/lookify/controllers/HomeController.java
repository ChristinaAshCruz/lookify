package com.christinac.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.christinac.lookify.models.Song;
import com.christinac.lookify.services.SongService;

@Controller
public class HomeController {
	
	//connect to service
	@Autowired
	private SongService songServ;
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	// song table jsp
	@GetMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> allSongs = songServ.findAll();
		model.addAttribute("allSongs", allSongs);
		return "dashboard.jsp";
	}
	
	// add song jsp
	@GetMapping("/song/new")
	public String addSong(@ModelAttribute("newSong") Song newSong) {
		return "addSong.jsp";
	}
	
	@PostMapping("/song/new")
	public String createSong(@Valid @ModelAttribute("newSong") Song newSong, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return "addSong.jsp";
		} else {
			songServ.createSong(newSong);
			return "redirect:/dashboard";
		}
	}
	
	// song details jsp
	@GetMapping("/song/{id}/view")
	public String viewSong(@PathVariable("id") Long id, @ModelAttribute("song") Song song, Model model) {
		Song thisSong = songServ.findById(id);
		model.addAttribute("thisSong", thisSong);
		return "viewSong.jsp";
	}
	
	// top song jsp
	@GetMapping("/songs/top-ten")
	public String viewTopTen() {
		return "topTen.jsp";
	}
	
	//search results jsp
	@PostMapping("/search")
	public String search(@RequestParam("artist") String artist, Model model) {
		model.addAttribute("artist", artist);
		return "redirect:/search/" + artist ;
	}
	
	@GetMapping("/search/{artist}")
	public String searchResults(@PathVariable("artist") String artist, Model model) {
		model.addAttribute("songResults", songServ.findyByArtist(artist));
		model.addAttribute("searchTerm", artist);
		return "searchResults.jsp";
	}
	
	// delete song
	@GetMapping("/song/{id}/delete")
	public String deleteSong(@PathVariable("id") Long id) {
		songServ.delete(id);
		return "redirect:/dashboard";
	}

	
	
	
}
