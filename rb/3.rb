puts 'Размер исходного массива:'
n = gets.chomp.to_i

a = []
n.times { a << Random.rand(20) }
b = (0..a.max).to_a

puts 'Исходный массив:' 
p a

puts 'Массив пропущенных элементов:' 
p b - a
