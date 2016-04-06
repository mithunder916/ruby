class Person
  def initialize(name, age) #NEED to initialize classes in Ruby
    @name=name
    @age=age
    #making the class variables equal to instance variables is important, because now we can use name and age within other methods in the class.
  end

  def name      #these types of methods are called "Getters" they allow you to call name as a method
      @name
  end

  def age
      @age
  end

  def birthday #these next two types are called "Setters," because they allow the user to change the value of an instance variable. In this case, we can change the age.
      @age+=1
  end

  def change_name(name) #in this case, we can change the value of the instance 'name' by entering the new value in the parentheses (as an attribute)
      @name=name
  end
end

#makes a local variable(my_profile) equal to a new instance of the Person class, and provide its attributes
my_profile=Person.new("Mithun", 24)
#calls and prints age function
puts my_profile.age
my_profile.birthday
puts my_profile.age
puts "I am no longer #{my_profile.name}..."
my_profile.change_name("King Ruby")
puts "My name is now #{my_profile.name}"

puts "Hi, I'm #{my_profile.name}, and I am #{my_profile.age} years old."

class User
  def initialize(name)
    @username=name
  end
end

new_user=User.new('Shmitty')


 def quantity
    @quantity
   end

  def price
    @price
  end
end

new_product=Product.new('Blue',10,15)

puts new_product.quantity
puts new_product.price

class Vehicle
  attr_reader :model, :b, :year
  attr_writer :year
  def initialize(make,model,year)
    @b=make
    @model=model
    @year=year
  end
end

new_car=Vehicle.new('Toyota','Corolla','2004')
