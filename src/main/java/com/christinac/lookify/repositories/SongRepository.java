package com.christinac.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.christinac.lookify.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long>{
	
	@Override
	public List<Song> findAll();
	
	public List<Song> findByArtistContaining(String artist);

}
