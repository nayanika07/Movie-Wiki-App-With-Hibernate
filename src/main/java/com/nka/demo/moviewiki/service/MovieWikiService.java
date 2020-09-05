package com.nka.demo.moviewiki.service;

import java.util.List;

import com.nka.demo.moviewiki.model.Movie;

public interface MovieWikiService {
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
