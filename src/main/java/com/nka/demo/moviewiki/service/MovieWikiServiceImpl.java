package com.nka.demo.moviewiki.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureOrder;
import org.springframework.stereotype.Service;

import com.nka.demo.moviewiki.dao.MovieRepository;
import com.nka.demo.moviewiki.model.Movie;
@Service
public class MovieWikiServiceImpl implements MovieWikiService {

	@Autowired
	MovieRepository repository;
	
  @Override
	public List<Movie> getMovies() {
		// TODO Auto-generated method stub
		return repository.findAll();
		//1
	}

  @Override
	public List<Movie> getMovieListCustomer(){
		List<Movie> cmenu = repository.getMovieListCustomer();
		return cmenu;//2
		
	}

  @Override
	public void addMovie(Movie mov) {
		repository.save(mov);
		//3
	}
	
  @Override
	public void deleteMovie(int id) {
		repository.deleteById(id);
		
	}//4
	
  @Override
	public void deleteMovieFromFavoriteList(int id) {
		repository.deleteById(id);
	}//5
	
  @Override
	public Movie getMovieById(int id) {
		// TODO Auto-generated method stub
		return repository.findById(id).get();
	}//6
  @Override
	public void updateMovie(Movie mov) {
		repository.save(mov);
		
	}//7
  
  @Override	
	public List<Movie> FavoriteList(){
	List <Movie> cartmenu = repository.FavoriteList();
	return cartmenu;
		
	}//8
  

	public void updateMovieInFavoriteList(Movie mov) {
		repository.save(mov);
		}
			//9
			

}
