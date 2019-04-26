puts 'Введите n-ю секунду:'
n = gets.chomp.to_i

last = 24 * 3600 - n

puts 'Осталось:'
p "#{last/3600} ч. #{(last%3600)/60} мин."