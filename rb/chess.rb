board = [[' X  ', ' a  ', ' b  ', ' c  ', ' d  ', ' e  ', ' f  ', ' g  ', ' h  '],
         [' 1  ', ' bR ', ' bK ', ' bB ', ' bK ', ' bQ ', ' bB ', ' bK ', ' bR '], 
         [' 2  ', ' bp ', ' bp ', ' bp ', ' bp ', ' bp ', ' bp ', ' bp ', ' bp '], 
         [' 3  ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ '], 
         [' 4  ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ '], 
         [' 5  ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ '], 
         [' 6  ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ ', ' __ '], 
         [' 7  ', ' wp ', ' wp ', ' wp ', ' wp ', ' wp ', ' wp ', ' wp ', ' wp '],
         [' 8  ', ' wR ', ' wK ', ' wB ', ' wK ', ' wQ ', ' wB ', ' wK ', ' wR ']]

def print_board(board)
  puts "\n"
  p board[0]
  p board[1]
  p board[2]
  p board[3]
  p board[4]
  p board[5]
  p board[6]
  p board[7]
  p board[8]
end

def move(board)
  hash = {'a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8 }
  input = []
  input = gets.chomp.chars
  abort if (input == ['e', 'x', 'i', 't'])
  board[input[4].to_i][hash[input[3]]] = board[input[1].to_i][hash[input[0]]]
  board[input[1].to_i][hash[input[0]]] = ' __ '
end

puts 'Пример хода: "b2 b4" ровно через 1 пробел'
puts '             (пешка черных пошла с позиции b2 на позицию b4'
puts "\n Для выхода введите exit"
print_board(board)

begin
puts 'Ход белых. Введите координаты:'
move(board)
print_board(board)
puts 'Ход черных. Введите координаты:'
move(board)
print_board(board)
end while (1)