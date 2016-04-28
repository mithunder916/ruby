def didyouwin
  if (@arr2<=>@arr1)==0
    p @arr2
      puts "Congrats! You won!"
      abort   #could add option to replay
  end
end

def replace
  @keynum=@arr3.index{|a| a==@guess} #finds index of letter
    @arr2.delete_at(@keynum)         #replaces array of blanks with letter
      @arr2.insert(@keynum,@guess)
    @arr3.delete_at(@keynum)         #replaces changing array with nil, so we can re-check
      @arr3.insert(@keynum,nil)
         didyouwin
          if @arr3.include?(@guess)==true   #checks if the letter occurs more than once in the word
           replace
         end
end

def guessround
puts "Please guess a letter that you think is in the word." #make recursive; branch conditional to check if guess is a letter
  @guess=gets.chomp.upcase
    if @arr3.include?(@guess)==true
      puts "Correct!"
      replace
        p @arr2
        guessround
    else
      puts "wrong" #add wrong answer sequence
    end
end

puts "Let's play Hangman. Please get someone to enter a word."
  @arr2=[]
    # @word=gets.chomp.upcase
    @word="MELLOW" #just for testing
      @arr1=@word.split(//)
        p @arr1
      @arr3=@word.split(//) #can't set @arr3=@arr1, or any change to one will change the other
      @arr1.count.times do
        @arr2.push("_")
      end
        guessround
