puts 'Размер исходного массива:'
original_array_size = gets.chomp.to_i

original_array = []
original_array_size.times { original_array << Random.rand(20) }
full_array = (0..original_array.max).to_a

puts 'Исходный массив:' 
p original_array

puts 'Массив пропущенных элементов:' 
p full_array - original_array
