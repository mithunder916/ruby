def playagain
puts "Would you like to play again? (y/n)"
  ans=gets.chomp.downcase
    if ans=="y"
      gamestart
    elsif ans=='n'
      abort
    else
      playagain
    end
end

def didyouwin
  if (@ans_array<=>@OG_array)==0
    p @ans_array
      puts "Congrats! You won!"
        playagain
  end
end

def replace
  @keynum=@mod_array.index{|a| a==@guess} #finds index of guessed letter
    @ans_array.delete_at(@keynum)         #replaces array of blanks with letter
      @ans_array.insert(@keynum,@guess)
    @mod_array.delete_at(@keynum)         #replaces changing array with nil, so we can re-check
      @mod_array.insert(@keynum,nil)
         didyouwin
          if @mod_array.include?(@guess)==true   #checks if the letter occurs more than once in the word
           replace
         end
end

def wrong_ans
  @tries-=1
    if @tries==0
      puts "The hangman is dead. Game over."
        playagain
    else
      puts "You have #{@tries} tries left before the hangman meets his maker."
        guessround
    end
end

def fullguess
    puts "Okay, what's your guess?"
      word_guess=gets.chomp.upcase
        if (word_guess<=>@OG_array.join)==0
          puts "Whoa, you guessed right! You win!"
            playagain
        else
          puts "Sorry, that's not it."
            wrong_ans
        end
end

def guessround
puts "Would you like to guess the word, or a letter? (w/l)"
  guess_type=gets.chomp.downcase
    if guess_type=="w"
      fullguess
    elsif guess_type=="l"
      puts "Please name a letter that you think is in the word." #make recursive; branch conditional to check if guess is a letter
        @guess=gets.chomp.upcase
          if @mod_array.include?(@guess)==true
            puts "Correct."
            replace
              p @ans_array
              guessround
          else
            puts "Wrong."
            wrong_ans
          end
    else
      puts "Sorry, I didn't understand that. Please enter w or l."
        guessround
    end
end

def gamestart
  puts "Let's play Hangman. Please get someone to enter a word."
    @ans_array=[]
    @tries=6
      @word=gets.chomp.upcase
        @OG_array=@word.split(//)
        @mod_array=@word.split(//) #can't set @mod_array=@OG_array, or any change to one will change the other
          @OG_array.count.times do
            @ans_array.push("_")
          end
          25.times do
            puts " "
          end
            guessround
end

gamestart
