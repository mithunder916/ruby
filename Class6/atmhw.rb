class Account
  def initialize(name,balance,pin)
    @name=name
    @balance=balance.to_i  #important to make it an integer, so that we can do math with it later
    @pin=pin
  end

  def pin_error
    puts "Access denied:incorrect PIN"
  end

  def display_balance
    puts "What is your PIN?"
      if gets.chomp==@pin
        puts "Your balance is #{@balance}"
      else
        pin_error
      end
  end

  def withdraw
    puts "Enter PIN"
      if gets.chomp==@pin
        puts "How much do you want to withdraw?"
          wit_amt=gets.chomp.to_i
            if wit_amt<@balance
              @balance=@balance-wit_amt #makes it change value of balance permanently
                puts "You have #{@balance} remaining."
            else
              puts "Sorry, you don't have enough scrilla."
            end
      else
        pin_error
      end
  end

def deposit
  puts "Enter PIN"
    if gets.chomp==@pin
      puts "How much do you want to deposit?"
        dep_amt=gets.chomp.to_i
          @balance=@balance+dep_amt #could also have use -= in the next line
            puts "You now have #{@balance} in your account."
    else
      pin_error
    end
end
end

acc1=Account.new("Mithun","10000","666")

puts "Welcome to our ATM. Would you like to display balance, deposit, or withdraw?"
  func=gets.chomp.downcase
    if func=="display balance"
      acc1.display_balance
    elsif func=="deposit"
      acc1.deposit
    elsif func=="withdraw"
      acc1.withdraw
    else
      puts "Sorry, I didn't understand the request."
    end


#acc1.deposit
#acc1.withdraw
