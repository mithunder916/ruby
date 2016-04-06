class Movie
  def initialize(name,year,director,rating)
    @name=name
    @year=year
    @director=director
    @rating=rating
  end

  def info
    puts @name
    puts @year
    puts @director
    puts @rating
  end
end

the_dark_knight=Movie.new("The Dark Knight","2007","Chris Nolan",8.0)
rashomon=Movie.new("Rashomon","1950","Akira Kurosawa",10.0)
the_dark_knight.info
rashomon.info
