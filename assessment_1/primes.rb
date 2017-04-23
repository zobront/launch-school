def prime?(number)
  (2...number).each do |divisor|
    return false if number % divisor == 0
  end
  return true
end

def find_primes(start, stop)
  (start..stop).select { |num| prime?(num)}
end

p find_primes(3, 10)
p find_primes(5, 20)
