EMPTY = "     "
USER = "  X  "
COMPUTER = "  O  "

WINNING_PATTERNS = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

def prompt(message)
  puts ">> #{message}"
end

def initialize_board
  board = {}
  9.times do |index|
    board[index+1] = EMPTY
  end
  board
end

def display_board(board)
  prompt "The board:\n\n"

  puts "       |     |     "
  puts "  #{board[1]}|#{board[2]}|#{board[3]}"
  puts "       |     |     "
  puts"  -----+-----+-----"
  puts "       |     |     "
  puts "  #{board[4]}|#{board[5]}|#{board[6]}"
  puts "       |     |     "
  puts"  -----+-----+-----"
  puts "       |     |     "
  puts "  #{board[7]}|#{board[8]}|#{board[9]}"
  puts "       |     |     "
  puts ""

end

def update_board(board, square, player)
  board[square] = player
  board
end

def is_square_empty?(board, square)
  board[square] == EMPTY
end

def user_plays(board)
  square = 0
  loop do
    prompt("Please choose an empty square (1-9)")
    square = gets.chomp.to_i
    break if is_square_empty?(board, square) && (1..9).include?(square)
  end
  changed_board = update_board(board, square, USER)
  display_board(changed_board)
  return square
end

def computer_plays(board)
  square = 0
  loop do
    square = rand(1..9)
    break if is_square_empty?(board, square)
  end
  display_board(update_board(board, square, COMPUTER))
  return square
end

def someone_wins?(board, last_move, last_player)
  possible_matches = WINNING_PATTERNS.select { |pattern| pattern.include?(last_move) }

  possible_matches.any? do |match|
    match.all? do |position|
      board[position] == board[last_move]
    end
  end

end

def board_full?(board)
  !board.any? do |_, value|
    value == EMPTY
  end
end

def game_over?(board, last_move, last_player)
  over = true
  if board_full?(board)
    prompt("You have a tie.")
  elsif someone_wins?(board, last_move, last_player)
    prompt("#{last_player} won.")
  else
    over = false
  end
  return over
end

loop do
  board = initialize_board
  display_board(board)

  loop do
    user_move = user_plays(board)
    break if game_over?(board, user_move, "You")
    computer_move = computer_plays(board)
    break if game_over?(board, computer_move, "The Computer")
  end

  prompt("Would you like to play again?")
  break if gets.start_with?('y') == false
end