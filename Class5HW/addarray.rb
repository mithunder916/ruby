puts "How long should the first set be?"
  num1=gets.chomp.to_i
puts "How long should the second set be?"
  num2=gets.chomp.to_i

  arr1=[]
  arr2=[]
  num1.times do
    arr1<<rand(100)
  end
  num2.times do
    arr2<<rand(100)
  end

#these next two lines are just to check the arrays. Delete if you don't care.
p arr1
p arr2

#a better option would be to make the two arrays equal in length, adding 0s to the shorter of the two until they matched
def shortarray(x,y)
  if x.length>y.length
      return y.length
    elsif y.length>x.length
      return x.length
    else
      return x.length
  end
end

#shortarray(arr1,arr2)

b=0
until b==shortarray(arr1,arr2)
  puts arr1[b]+arr2[b]
  b+=1
end
