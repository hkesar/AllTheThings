user_name = ARGV.first # gets thr first aurgument
prompt  = "Your Answer >> "

puts "Hi #{user_name}."
puts "I'd like to ask you more questions."
puts "Do you like me #{user_name}? "
print prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}"
puts prompt

lives = $stdin.gets.chomp

#a comma for puts like using is twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts "Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"



