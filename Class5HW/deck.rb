deck=[*1..52]
#puts deck

puts "How many people are playing?"
players=gets.chomp.to_i
hands=players*2

#puts deck.sample=b
#  deck.delete(b)

def dealer(b)
b=''
b=(deck.sample)
#hands.times do
  puts b
  deck.delete(b)
end


def deal
  puts deck.sample
  puts deck.sample
end
