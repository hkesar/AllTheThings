print "Give me your money and I will return 10\% back $"
money = gets.chomp.to_f
return_money = money * 10 / 100
puts "here is your change $#{return_money}"