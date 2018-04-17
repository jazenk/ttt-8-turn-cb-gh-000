def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (input)
  index = (input.to_i) - 1
end

def valid_move? (board, index)
  if !(position_taken?(board, index)) && index.between?(0, 8)
    true
  else
    false
  end
end

def move (board, index, character = "X")
  board[index] = character
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if input_to_index(input)
    move(board, input)
    display_board(board)
  else
    puts "Please enter a valid move"
  end
end
