class Product  #class name. Now I can make objects that belong to this class)
  def initialize(type,price,quantity)
    @type=type
    @price=price
    @quantity=quantity
  end

  def sell
    puts "How many do you want to buy?"
    input=gets.chomp.to_i
    if input>@quantity
      puts "Sorry, but you requested #{input-@quantity} more than we have in stock."
    else
      @quantity-=input
      puts "You purchased #{input}"
    end
  end
