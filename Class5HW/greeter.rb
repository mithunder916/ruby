teachers=%w[Mr.Usoroh Mr.Polazzo Mr.Grossman Mrs.Helinski]
students=%w[Eli Owen Simon Aneem]

puts "What's your name?"
  name=gets.chomp
    teachers.each do |teach|
      if name==teach
        puts "Greetings, #{name}, fill those young minds with knowledge!"
      end
    end

    students.each { |stud|
      if name==stud
        puts "Hey #{name}, better not fool around today. Exams are coming up!"
      end
    }
