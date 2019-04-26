puts 'Введите строку:'
str = gets.chomp.to_s

p str.scan(/[A-Z]/) == str.scan(/[A-Z]/).reverse
