def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if(!position_taken?(board, index) && index.between?(0, 8))
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def move(board, index, symbol = 'X')
  board[index] = symbol
end

def turn(board)
  puts "Please enter 1-9:"
  uinput = gets.strip
  index = input_to_index(uinput)
  until valid_move?(board, index) do
    puts "Please enter 1-9:"
    uinput = gets.strip
    index = input_to_index(uinput)
    display_board(board)
  end
  move(board, index)
  display_board(board)
end
