filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
puts txt.read
txt.close()