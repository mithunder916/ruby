numset=[1,2,3,4,5,6,7,8,9,10]
fin=''
while fin!= 7
  fin=numset.sample
  puts fin
#originally, the bottom part of the loop was not communicating with the "while" part. Needed a second variable to tell it to, so i created fin.
end
