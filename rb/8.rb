puts 'Введите строку:'
str = gets.chomp.to_s

puts 'Количество русских символов в строке:'
p str.scan(/[а-яА-Я]/).size
