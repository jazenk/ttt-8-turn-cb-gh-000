def display_board (board)
  puts 
end

def valid_move? (board, index)
  if !(position_taken?(board, index)) && index.between?(0, 8)
    true
  else
    false
  end
end

def move
end