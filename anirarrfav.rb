animals=["tiger","cheetah",'elephant','kangaroo','koala','skink','toucan','komodo_dragon']
fav='tiger'
animals.each do |x|
  if x == fav
    puts "My favorite is the #{x}"
  end
end
