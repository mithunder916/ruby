class Account
  attr_reader :name
  attr_accessor :balance, :pin
  def initialize (name, balance, pin)
    @name = name
    @balance = balance
    @pin = pin
  end
  def greeting
    puts "Hello, #{@name} welcome to the bank."
  end
  def pin_check
    puts 'Please enter your pin.'
    input = gets.chomp.to_i
    if input != @pin
      puts "Access denied: incorrect PIN."
      pin_check
    elsif input == @pin
      pin_correct
    end
  end
  def pin_correct
    puts "Thank you for banking with us, #{@name}. Please type balance, withdraw deposit, or exit"
    answer = gets.chomp.downcase
    if answer == 'balance'
      display_balance
    elsif answer == 'deposit'
      deposit
    elsif answer == 'withdraw'
      withdraw
    elsif answer == 'exit'
      puts 'Thanks for stopping by! See you next time'
    end
  end
  def display_balance
    puts "your balance is $#{@balance}."
    pin_correct
  end
  def withdraw
    puts "How much would you like to withdraw?"
    withdrawal = gets.chomp.to_i
    puts "You have withdrawn $#{withdrawal}. You now have $#{@balance -= withdrawal} left in your account"
    pin_correct
  end
  def deposit
    puts "How much would you like to deposit?"
    deposit = gets.chomp.to_i
    puts "You have deposited $ #{deposit}.  You now have $ #{@balance += deposit} in your account"
    pin_correct
  end
  def begin
    greeting
    pin_check
  end
end
my_account = Account.new('Emily Connors',1000,1234)
my_account.begin
