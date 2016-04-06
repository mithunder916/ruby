sounds = {'tiger' => 'rawr'}
animals=["tiger","cheetah",'elephant','kangaroo','koala','skink','toucan','komodo_dragon']

animals.each do |wawa|
  puts "The #{wawa} goes #{sounds[wawa]}"
end
