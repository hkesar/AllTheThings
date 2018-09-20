puts 'Hello, and welcome to seventh grade'
puts 'My name is Mrs Gabbard. And your name is ....'
name = gets.chomp

if name == name.capitalize
	puts 'Please take a seat, ' + name
else 
	puts name + '? You mean ' + name.capitalize + '.'
	puts 'Don\'t you even know how to spell your name??'
	reply = gets.chomp
		if reply.downcase == 'yes'
			puts 'Hummph! Well, sit down!'
		else 
			puts 'GET OUT'

		end
end







##var1	=	2
##var2	=	'5'
##puts	var1	+	var2.to_i

# puts	'Hello there, what\'s your name?'
# name	=	gets.chomp
# puts	'Your name is ' + name + '? What a lovely name!'
# puts	'Pleased to meet you, '	+	name	+	'. :)'

#puts 'What is your first name?'
#firstname	=	gets.chomp
#puts 'What is your middle name?'
#middlename	=	gets.chomp
#puts 'What is your last name?'
#lastname	=	gets.chomp
#puts 'Nice to me you '	+	firstname	+ ' '	+	middlename	+	' '	+	lastname


# puts 'What is your favourite number?'
# fav_number = gets.chomp
# new_fav_number = fav_number.to_i +   1
# puts 'I added something to it. The new number is now '  +   new_fav_number.to_s

# puts 'what is your first name'
# first_name = gets.chomp
# first_name_length = first_name.length
# puts 'what is your middle name'
# middle_name = gets.chomp
# middle_name_length = middle_name.length
# puts 'what is your last name'
# last_name = gets.chomp
# last_name_length = last_name.length
# name_length = first_name_length + middle_name_length + last_name_length
# puts "Did you know there are " + name_length.to_s + ' characters in your name'

# puts 'Hellow, what\'s is your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'

# if name == 'Chris'
# 	puts 'What a lovely name!'

# end

# puts 'I am a fortne-teller. Tell me your name:'
# name = gets.chomp
#  if name == 'Chris'
#  	puts 'I see great things in your future'
# else
# 	puts 'Your fortune is ... oh my! Look at the time!'
# 	puts 'I really have to go, sorry!'
# end
