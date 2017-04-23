filename = ARGV.first

contents = open(filename)

var = contents.read

print var

contents.close
