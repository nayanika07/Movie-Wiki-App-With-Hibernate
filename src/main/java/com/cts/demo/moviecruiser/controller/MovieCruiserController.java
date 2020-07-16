package com.cts.demo.moviecruiser.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.demo.moviecruiser.model.Movie;
import com.cts.demo.moviecruiser.service.MovieCruiserService;



@Controller
public class MovieCruiserController {

	@Autowired
	MovieCruiserService service;
	@RequestMapping("/index")
	public ModelAndView showIndex() {
		ModelAndView mv=new ModelAndView("movie-list-admin");
		List<Movie> movies=service.getMovies();
		mv.addObject("movies", movies);
		return mv;
		
	}//1
	
	@RequestMapping("/customermovielist")
	public ModelAndView showCustomer() {
		ModelAndView mv=new ModelAndView("movie-list-customer");
		List<Movie> movies=service.getMovieListCustomer();
		mv.addObject("movies", movies);
		return mv;
		
	}//2
	
	@RequestMapping("/add")
	public String showAdd(Model model) {
		
		model.addAttribute("movie", new Movie());
		return "add-new-movie";
	}
	@RequestMapping("/addMovie")
	public String addMenuItem(@Valid @ModelAttribute Movie movie,BindingResult result) {
		
		
		if(result.hasErrors()) {
			return "add-new-movie";
		}
		service.addMovie(movie);
		return "redirect:/index";
		
	}//3
	
	@RequestMapping("/delete")
	public String deleteMovie(@RequestParam int id) {
		service.deleteMovie(id);
		return "redirect:/index";
	}//4
	
	@RequestMapping("/deletefromfavorites")
	public String deleteMovieFromFavoriteList(@RequestParam int id) {
		service.deleteMovieFromFavoriteList(id);
		return "redirect:/myfavorites";
	}//5
	
	@RequestMapping("/update")
	public String update(@RequestParam int id,Model model) {
		
		Movie movie = service.getMovieById(id);
		model.addAttribute("movie", movie);
		
		return "edit-movie-details";
				
	}//6
	
	@RequestMapping("/updateMovie")
	public String update(@Valid @ModelAttribute Movie movie,BindingResult result) {
		
		if(result.hasErrors()) {
			return "update";
		}
		service.updateMovie(movie);
		return "redirect:/index";
				
	}//7
	
	@RequestMapping("/myfavorites")
	public ModelAndView showFavoriteList() {
		ModelAndView mv=new ModelAndView("favoritelist");
		List<Movie> movies=service.FavoriteList();
		mv.addObject("movies", movies);
		return mv;
		
	}//8
	
	@RequestMapping("/addtofavorites")
	public String addtocart(@RequestParam int id,Model model) {
		
		Movie movie=service.getMovieById(id);
		model.addAttribute("movie", movie);
		
		return "addtofavorites";
				
	}
	
	@RequestMapping("/updateMovieInFavoriteList")
	public String addtocart(@Valid @ModelAttribute Movie movie,BindingResult result) {
		
		if(result.hasErrors()) {
			return "addtofavorites";
		}
		service.updateMovieInFavoriteList(movie);
		return "redirect:/myfavorites";
				
	}
	
	
	
	
}
