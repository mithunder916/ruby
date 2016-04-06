class Movie
  attr_reader :name, :year, :director, :rating
  def initialize (name, year, director, rating)
    @name = name
    @year = year
    @director = director
    @rating = rating
  end
​
  def name_that
    puts "please list your movie name"
    movie_name= gets.chomp.capitalize
    if movie_name == @name
      puts "The movie #{@name} was directed by #{@director} in #{@year}. It has a rating of #{rating}"
    else
      puts "we don't have that movie"
    end
  end
end

my_movie= Movie.new('Minions', 2015, 'Disney', 9.5)
my_movie.name_that
