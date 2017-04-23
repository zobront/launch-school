(1..99).each do |x|
  puts x if x.odd?
end

# alternative answer...

odds = (1..99).select {|x| x.odd?}
puts odds
