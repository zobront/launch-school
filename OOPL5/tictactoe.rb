class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]

  def initialize
    @squares = {}
    reset
  end

  def get_square_at(key)
    @squares[key]
  end

  def set_square_at(key, marker)
    @squares[key].marker = marker
  end

  def empty_square_keys
    @squares.keys.select {|key| @squares[key].marker == Square::INITIAL_MARKER }
  end

  def full?
    empty_square_keys.empty?
  end

  def someone_won?
    !!detect_winner
  end

  def count_markers(squares, marker)
    squares.collect(&:marker).count(marker)
  end

  def detect_winner
    WINNING_LINES.each do |line|
      if count_markers(@squares.values_at(*line), TTTGame::HUMAN_MARKER) == 3
        return TTTGame::HUMAN_MARKER
      elsif count_markers(@squares.values_at(*line), TTTGame::COMPUTER_MARKER) == 3
        return TTTGame::COMPUTER_MARKER
      end

      # @squares[line[0]].marker == TTTGame::HUMAN_MARKER && @squares[line[1]].marker == TTTGame::HUMAN_MARKER && @squares[line[2]].marker == TTTGame::HUMAN_MARKER
      # @squares[line[0]].marker == TTTGame::COMPUTER_MARKER && @squares[line[1]].marker == TTTGame::COMPUTER_MARKER && @squares[line[2]].marker == TTTGame::COMPUTER_MARKER
    end
    nil
  end

  def reset
    (1..9).each {|key| @squares[key] = Square.new }
  end

end

class Square
  INITIAL_MARKER = ' '

  attr_accessor :marker

  def initialize(marker = INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end
end


class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end

  def play
  end
end

class TTTGame
  HUMAN_MARKER = 'X'
  COMPUTER_MARKER = 'O'

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear
    system 'clear'
  end

  def display_board
    clear
    puts "You're a #{human.marker}. Computer is a #{computer.marker}."
    puts ""
    puts "     |     |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}  |  #{board.get_square_at(3)}  "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}  |  #{board.get_square_at(6)}  "
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}  |  #{board.get_square_at(9)}  "
    puts "     |     |"
    puts ""
  end

  def human_moves
    puts "Choose a square: #{board.empty_square_keys.join(', ')}"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if (board.empty_square_keys).include?(square)
      puts "Sorry. Not a valid choice."
    end

    board.set_square_at(square, human.marker)
  end

  def computer_moves
    board.set_square_at(board.empty_square_keys.sample, computer.marker)
  end

  def display_result
    display_board

    case board.detect_winner
    when HUMAN_MARKER
      puts "You won!"
    when COMPUTER_MARKER
      puts "Computer won!"
    else
      puts "It's a tie"
    end
  end

  def play_again?
    again = nil
    loop do
      puts "Want to play again? (y/n)"
      again = gets.chomp.downcase
      break if %w(y n).include?(again)
      puts "Sorry, that's not a valid answer."
    end

    again == 'y'
  end

  def play
    display_welcome_message

    loop do
      display_board
      loop do
        human_moves
        break if board.someone_won? || board.full?

        computer_moves
        break if board.someone_won? || board.full?

        display_board
      end
      display_result
      break unless play_again?
      board.reset
    end

    display_goodbye_message
  end
end

game = TTTGame.new
game.play
