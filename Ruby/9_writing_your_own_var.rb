#page 60
#def say_moo
#  puts 'moo'
#end

#say_moo

# #page61
# def say_moo num
# 	puts 'moooo..' * num
# end
# say_moo 100
# puts 'oino onk'

# 9.2 page 61
# def double_this num
# 	num_times_2 = num * 2
# 	puts num.to_s + ' doubled to ' + num_times_2.to_s
# end
# double_this 100
# def old_roman_numeral num
#   values =   [1000,500, 100, 50, 10, 5, 1]
#   numerals = ["M", "D", "C", "L", "X", "V", "I"]
#   roman_numeral = ""
#   i = 0
 
#   while i <= 6
#     while num >= values[i]
#       num = num - values[i]
#       roman_numeral = roman_numeral + numerals[i]
#     end
#     i = i + 1
#   end
 
#   roman_numeral
# end
 
# print "Enter the number you want to convert to an old roman numeral: "
 
# puts old_roman_numeral(gets.chomp.to_i)


