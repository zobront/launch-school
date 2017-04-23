class PerfectNumber
  def self.classify(number)
    divisors = (1...number).select { |num| number % num == 0 }
    if divisors.reduce(:+) < number
      puts "Deficient"
    elsif divisors.reduce(:+) == number
      puts "Perfect"
    elsif divisors.reduce(:+) > number
      puts "Abundant"
    end
  end
end

print "Please enter a number: "
number = gets.chomp.to_i
PerfectNumber.classify(number)
