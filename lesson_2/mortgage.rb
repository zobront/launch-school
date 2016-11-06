puts "Welcome to the Mortgage Calculator!"
puts "What's your name?"
name = gets.chomp

puts "Hi #{name}! Time to help you with your mortgage..."
puts "Three quick questions:"
puts "1) How much is your loan for?"
amount = gets.chomp.to_f
puts "2) What's your interest rate?"
puts "[Note: Express this annually as a number (ex. 4% is 4)]"
apr = gets.chomp.to_f
puts "3) What's your loan duration in years?"
duration_in_years = gets.chomp.to_f

puts "Thanks #{name}!"

duration_in_months = duration_in_years * 12
monthly_interest_rate = apr / 1200
monthly_payment = amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**-duration_in_months))

puts "******"

puts "Your monthly interest payment is $#{format('%02.2f', monthly_payment.to_i)}."
puts "Your loan duration in months is #{duration_in_months.to_i}."
