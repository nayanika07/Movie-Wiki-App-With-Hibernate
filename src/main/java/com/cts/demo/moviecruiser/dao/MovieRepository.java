package com.cts.demo.moviecruiser.dao;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cts.demo.moviecruiser.model.Movie;

public interface MovieRepository extends JpaRepository<Movie, Integer> {
 
	@Query("from Movie where active= true and dateofrelease <= current_date() ")
	public List<Movie> getMovieListCustomer();
	
	@Query("from Movie where fav= true ")
	public List<Movie> FavoriteList();

	
	
}
