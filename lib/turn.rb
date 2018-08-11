

#Takes users move and converts it to an index on the board
def input_to_index(input)
  input.to_i - 1
end

#Updates board with users move
def move(board,input,char="X")
  board[input] = char
  board
end

#displays the latest board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Determines if the users latest move is valid
def valid_move?(board,index)
  if index.between?(0,10) && position_taken?(board,index) == false
    true
  elsif position_taken?(board,index) == true
    false
  end
end

#Determines if the position on the board the user selected is taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || "O"
    true
  end
end

#Lets the player take a turn
def turn(board)
#  is_move_valid = false
#  while is_move_valid == false
#    puts "Please enter 1-9:"
#    input = gets.strip
#    index = input_to_index(input)
#    is_move_valid = valid_move?(board,index)
#  end
#  move(board,index)
#  display_board(board)

puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)

if valid_move?(board,index) == true
  move(board,index)
  display_board(board)
else
  turn(board)
end

end
