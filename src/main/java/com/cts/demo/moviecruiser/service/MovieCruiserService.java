package com.cts.demo.moviecruiser.service;

import java.util.List;

import com.cts.demo.moviecruiser.model.Movie;

public interface MovieCruiserService {
	List<Movie> getMovies();
	List<Movie> getMovieListCustomer();
	void addMovie(Movie mov);
	void deleteMovie(int id);
	void deleteMovieFromFavoriteList(int id);
	Movie getMovieById(int id);
	void updateMovie(Movie mov);
	
	void updateMovieInFavoriteList(Movie mov);
    List<Movie> FavoriteList();
}
