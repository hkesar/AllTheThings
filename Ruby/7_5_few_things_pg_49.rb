# beer_num = 99
# counter = 0
# while counter <= beer_num 
#   if beer_num == 1 
#     puts beer_num.to_s + ' bottle of beer on the wall, ' + beer_num.to_s + ' bottle of beer.'
#     puts 'Take one down and pass it around, no more bottles of beer on the wall.'
#     puts ''
#   elsif beer_num == 0
# 	puts 'No more bottles of beer on the wall, no more bottles of beer.'
# 	puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
# 	puts ''
#   else
# 	puts beer_num.to_s + ' bottles of beer on the wall, ' + beer_num.to_s + ' bottles of beer.'
# 	puts 'Take one down and pass it around, ' + beer_num.to_s + ' bottles of beer on the wall.'
# 	puts ''

#   end
# beer_num -= 1
# end

# counter_1 = 99
# counter_2 = 99
# take_one = 'Take one down and pass it around, '
# wall = ' bottles of beer on the wall, ' 
# while counter_2 >=0
#   counter_1 -= 1
#     if counter_2 == 0
#       puts 'No more' + wall + 'no more bottles of beer.'
#       puts 'Go to the store and buy some more, 99' + wall     
#     elsif counter_2 == 1
#       puts counter_2.to_s + ' bottle of beer on the wall, ' + counter_2.to_s + ' bottle of beer.'
#       puts take_one + 'no more' + wall    
#     else
#       puts counter_2.to_s + wall + counter_2.to_s + ' bottles of beer.'
#       puts take_one + counter_1.to_s +  wall    
#     end
#   counter_2 -= 1
#   puts ''
# end

take_one = 'Take one down and pass it around, '
wall = ' bottles of beer on the wall, ' 
bottles = 99
while bottles >=0
    if bottles == 0
      puts 'No more' + wall + 'no more bottles of beer.'
      puts 'Go to the store and buy some more, 99' + wall
      break     
    elsif bottles == 1
      puts bottles.to_s + ' bottle of beer on the wall, ' + bottles.to_s + ' bottle of beer.'
      puts take_one + 'no more' + wall 
      bottles -= 1   
    else
      puts bottles.to_s + wall + bottles.to_s + ' bottles of beer.'
      bottles -= 1
      puts take_one + bottles.to_s +  wall        
    end
  puts ''
end

