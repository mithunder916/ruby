class Movie
  attr_reader :name, :year, :director
  attr_accessor :rating
  def initialize(name, year, director, rating)
    @name=name
    @year=year
    @director=director
    @rating=rating
  end
end
​
puts "Name your favorite movie?"
w=gets.chomp
puts "What year was that in?"
x= gets.chomp
puts "Who is the director?"
y=gets.chomp
puts "What do you rate it?"
z=gets.chomp
film=Movie.new(w, x, y, z)
puts "Your fav movie is #{film.name}, directed by #{film.director} in #{film.year}. You gave it a #{film.rating}."
