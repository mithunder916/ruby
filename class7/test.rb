#@wrong_answers=Array.new
#wrong_answers

class Student
  def initialize(email,password,score)
    @email=email
    @password=password
    @score=score.to_i
  end

def wrong_answers
  @wrong_ans = Array.new
  #wrong_ans=@wrong_ans
end

def test
  @score=100
  wrong_answers
  puts "1. What is the square root of 16?"
    answer=gets.chomp
      if answer.to_i!=4 && answer!="four"
        @score-=20
        @wrong_ans<<"number 1"
      end
  puts "2. Is a chimpanzee a monkey or an ape?"
    ans2=gets.chomp.downcase
      if ans2!="ape"
        @score-=20
        @wrong_ans<<"number 2"
      end
  puts "3. Is Katy Perry's music terrible (yes/no)?"
    ans3=gets.chomp.downcase
      if ans3!="yes"
        @score-=20
        @wrong_ans<<"number 3"
      end
  puts "4. Which continent does Sri Lanka belong to?"
    ans4=gets.chomp.downcase
      if ans4!="asia"
        @score-=20
        @wrong_ans<<"number 4"
      end
  puts "5. Which empire was larger, British or Mongol?"
    ans5=gets.chomp.downcase
      if ans5!="british"
        @score-=20
        @wrong_ans<<"number 5"
      end
  check_score
end

def login
  puts "Please enter your student email address."
    mail_entry=gets.chomp
  puts "Please enter your password."
    pwd_entry=gets.chomp
      if mail_entry==@email && pwd_entry==@password
        puts "Login successful."
        test
      elsif mail_entry!=@email || pwd_entry!=@password
        puts "Email or password not on file. Try again"
        login
      end
end

def check_score
  if @score<60
    puts "You FAILED, scoring only a #{@score}. Time for a retake."
      puts "I'd try harder with #{@wrong_ans.join(", ")}."
        test
  elsif @score>60
    puts "Good job, you scored a #{@score} and passed!"
      unless @score==100
        puts "Still, it looks like you missed #{@wrong_ans.join}."
      else
        puts "Damn, you aced it! I'm impressed!"
      end
  else
    puts "Yo, you BARELY passed, scoring exactly a 60."
      puts "Next time, try harder with #{@wrong_ans.join(", ")}."
  end
end
end

student1=Student.new("student@email.com","chicken",100)
student1.login
