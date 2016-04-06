class Rectangle
  def initialize(length,width)
    @length=length
    @width=width
  end

  def perimeter
    2*(@length+@width)
  end

  def area
    @length*@width
  end
end

rec1=Rectangle.new(6,4)
rec2=Rectangle.new(7,9)
puts rec1.perimeter
puts rec2.perimeter
puts rec1.area
puts rec2.area
