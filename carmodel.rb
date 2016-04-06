cars={'Toyota'=> 'Corolla', 'Honda'=>'Civic', 'BMW'=>'5-Series', 'Hyundai'=>'Equus', 'Chevy'=>'Suburban'}
  puts "What kind of car do you drive?"
    mod=gets.chomp.capitalize
    cars.each do |comp,model|
      if mod==model
        puts "Oh you drive a #{mod}? That's a #{comp}, right?"
      end
    end
