package com.christinac.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.christinac.lookify.models.Song;
import com.christinac.lookify.repositories.SongRepository;

@Service
public class SongService {
	
	@Autowired
	private SongRepository songRepo;
	
	
	public List<Song> findAll() {
		return songRepo.findAll();
	}
	
	public Song createSong(Song s) {
		return songRepo.save(s);
	}
	
	// delete
	public void delete(Long id) {
		songRepo.deleteById(id);;
	}
	
	// findByID
	public Song findById(Long id) {
		Optional<Song> optionalSong = songRepo.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		} else {
			return null;
		}
	}
	
	// find by artist
	public List<Song> findyByArtist(String artist){
		return songRepo.findByArtistContaining(artist);
	}
}
