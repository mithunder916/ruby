#In Ruby, you can use attr commands to create getters and setters much more easily.
class Pet
  attr_reader :type
  attr_accessor :nickname
  def initialize(species,nickname,type)
    @species=species
    @nickname=nickname
    @type=type
  end

#  def sound
      #if @type=='lizard'
#      puts "hiss"
#    elsif @type=='dog'
#      puts "bark"
#    else
#      puts "Unknown animal"
#    end
#  end
end

my_pet=Pet.new('Iguana','Terence','lizard')
my_doge=Pet.new('Lab','Jonny','dog')
puts my_pet.type
puts my_doge.type
puts my_pet.nickname
puts my_pet.nickname="Joey"
