filename = ARGV.first

puts "We are going to erase #{filename}", "If you don't want to do that, hit CTRL-C (^C). ", "If you dont want that, hit RETURN"

$stdin.gets

puts "Openinng the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines"

print "line 1: "
line1 = $stdin.gets.chomp

print "line 2: "
line2 = $stdin.gets.chomp

print "line 3: "
line3 = $stdin.gets.chomp

puts "I am going to write these to the file "

line_break = "\n"

target.write (line1 + line_break + line2 + line_break + line3)

puts "And finaly, we close it"

target.close

and created >= -90d and created < -30d

type = Defect AND "Epic Link" = vulnerabilities AND status != "In RC" AND Severity  in (1-Critical, 2-High) and created >= -11d and created < -9d 