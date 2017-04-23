# def buy_fruit(list)
#   shopping_list = []
#   list.each do |fruit, quantity|
#     quantity.times { |x| shopping_list << fruit }
#   end
#   shopping_list
# end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
