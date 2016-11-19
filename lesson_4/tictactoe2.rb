require 'pry'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
BEST_SQUARE = 5
WHO_GOES_FIRST = "player"

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k,v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def place_piece!(brd, player)
  if player == "Player"
    player_places_piece!(brd)
  elsif player == "Computer"
    computer_places_piece!(brd)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    puts "Choose a square (#{joiner(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    puts "That's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  if !square && empty_squares(brd).include?(BEST_SQUARE)
    square = BEST_SQUARE
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def alternate_player(current_player)
  if current_player == "Player"
    return "Computer"
  elsif current_player == "Computer"
    return "Player"
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)

  # WINNING_LINES.each do |line|
  #   if brd[line[0]] == PLAYER_MARKER &&
  #      brd[line[1]] == PLAYER_MARKER &&
  #      brd[line[2]] == PLAYER_MARKER
  #     return 'Player'
  #   elsif brd[line[0]] == COMPUTER_MARKER &&
  #         brd[line[1]] == COMPUTER_MARKER &&
  #         brd[line[2]] == COMPUTER_MARKER
  #     return 'Computer'
  #   end
  # end
  # nil

  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joiner(array, delimitor=', ', word='or')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimitor)
  end
end

loop do
  player_score = 0
  computer_score = 0
  big_winner = ''

  loop do
    board = initialize_board
    first_move = nil

    if WHO_GOES_FIRST == "choose"
      loop do
        puts "Who goes first? Choose player or computer."
        first_move = gets.chomp
        if first_move != "player" && first_move != "computer"
          puts "That's not a valid choice."
        else
          break
        end
      end
    end

    if WHO_GOES_FIRST == "computer" || first_move == "computer"
      computer_places_piece!(board)
    end

    current_player = "Player"

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      puts "#{detect_winner(board)} won!"
    else
      puts "Cat's game!"
    end

    if detect_winner(board) == "Player"
      player_score += 1
    elsif detect_winner(board) == "Computer"
      computer_score += 1
    end

    puts "Player Score: #{player_score}"
    puts "Computer Score: #{computer_score}"

    if player_score >= 5
      big_winner = "Player"
      break
    elsif computer_score >= 5
      big_winner = "Computer"
      break
    else
      if WHO_GOES_FIRST != "choose"
        puts "Press enter to start the next game."
        next_game = gets.chomp
      end
    end
end

  puts "It's all over folks! #{big_winner} wins it all!"
  puts "Want to play again?"
  play_again = gets.chomp
  break unless play_again.downcase == "yes" || play_again.downcase == "y"
end

puts "Thanks for playing! Goodbye!"
