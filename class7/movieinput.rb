class Movie
  attr_reader :name, :year, :director, :rating
  def initialize
    puts "Name a movie, real or made up."
      @name=gets.chomp
    puts "What year was it made?"
      @year=gets.chomp
    puts "Who directed it?"
      @director=gets.chomp
    puts "What did the critics rate it?"
      @rating=gets.chomp
  end

  def info
    puts @name
    puts @year
    puts @director
    puts @rating
  end
end

sampmov=Movie.new
puts "Ah, so #{sampmov.name} was made in #{sampmov.year}, directed by #{sampmov.director}, and got a rating of #{sampmov.rating}."
