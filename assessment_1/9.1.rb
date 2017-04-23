name = ['John', 'Q', 'Doe']
info = { title: 'Master', occupation: 'Plumber' }

def greetings(array, hash)
  print "Hello, #{array.join(" ")}! "
  puts "Nice to have a #{hash[:title]} #{hash[:occupation]} around!"
end

greetings(name, info)
