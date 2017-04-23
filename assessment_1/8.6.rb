def fizzbuzz(first, last)
  array = []
  (first..last).each do |num|
    array << fizzbuzz_value(num)
  end
  puts array.join(", ")
end

def fizzbuzz_value(num)
  case
  when num % 3 == 0 && num % 5 == 0
    "Fizzbuzz"
  when num % 3 == 0
    "Fizz"
  when num % 5 == 0
    "Buzz"
  else
    num
  end
end

fizzbuzz(1, 15)
