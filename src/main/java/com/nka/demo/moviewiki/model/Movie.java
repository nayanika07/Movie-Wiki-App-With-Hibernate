package com.nka.demo.moviewiki.model;

	import java.time.LocalDate;

	import javax.persistence.Entity;
	import javax.persistence.Id;
	import javax.persistence.Table;
	import javax.validation.constraints.Max;
	import javax.validation.constraints.Min;

	import org.springframework.format.annotation.DateTimeFormat;

	@Entity
	@Table(name = "movie")
	
	public class Movie{
		@Id
		private int id;
		private String link;
		private String title;
		private double boxoffice;
	    private boolean active;
	    @DateTimeFormat (pattern = "dd-MM-yyyy")
	    private LocalDate dateofrelease;
	    private String genre;
	    private boolean hasteaser;
	    private boolean fav;
	

	     //getters and setters
	    
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getLink() {
			return link;
		}
		public void setLink(String link) {
			this.link = link;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public double getBoxoffice() {
			return boxoffice;
		}
		public void setBoxoffice(double boxoffice) {
			this.boxoffice = boxoffice;
		}
		public boolean isActive() {
			return active;
		}
		public void setActive(boolean active) {
			this.active = active;
		}
		public LocalDate getDateofrelease() {
			return dateofrelease;
		}
		public void setDateofrelease(LocalDate dateofrelease) {
			this.dateofrelease = dateofrelease;
		}
		public String getGenre() {
			return genre;
		}
		public void setGenre(String genre) {
			this.genre = genre;
		}
		public boolean isHasteaser() {
			return hasteaser;
		}
		public void setHasteaser(boolean hasteaser) {
			this.hasteaser = hasteaser;
		}
		public boolean isFav() {
			return fav;
		}
		public void setFav(boolean fav) {
			this.fav = fav;
		}
	}
