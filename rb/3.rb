puts 'Размер исходного массива:'
s = gets.chomp.to_i

a = []
s.times { a << Random.rand(20) }
b = (0..a.max).to_a

puts 'Исходный массив:' 
p a

puts 'Массив пропущенных элементов:' 
p b - a
