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


puts 'What is your favourite number?'
fav_number = gets.chomp
new_fav_number = fav_number.to_i +   1
puts 'I added something to it. The new number is now '  +   new_fav_number.to_s