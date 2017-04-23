class Score
  attr_accessor :human, :computer

  def initialize
    @human = 0
    @computer = 0
  end
end

class Move
  attr_accessor :value

  VALUES = ['rock', 'paper', 'scissors']

  def initialize
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def to_s
    @value
  end
end

class Rock < Move
  def initialize
    @value = 'rock'
  end

  def >(other_move)
    other_move.scissors?
  end

  def <(other_move)
    other_move.paper?
  end
end

class Paper < Move
  def initialize
    @value = 'paper'
  end

  def >(other_move)
    other_move.rock?
  end

  def <(other_move)
    other_move.scissors?
  end
end

class Scissors < Move
  def initialize
    @value = 'scissors'
  end

  def >(other_move)
    other_move.paper?
  end

  def <(other_move)
    other_move.rock?
  end
end


class Player
  attr_accessor :move, :name, :history

  def initialize
    set_name
    @history = []
  end
end

class Human < Player
  def set_name
    n = nil
    loop do
      puts "What's your name?"
      n = gets.chomp
      break unless n.empty?
      puts "Enter your name!"
    end
    self.name = n
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, or scissors:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice."
    end
    if choice == 'paper'
      self.move = Paper.new
      self.history << choice
    elsif choice == 'rock'
      self.move = Rock.new
      self.history << choice
    else
      self.move = Scissors.new
      self.history << choice
    end
  end
end

class Computer < Player
  def set_name
    self.name = ['R2D2', 'C3PO', 'Hal'].sample
  end

  def choose
    choice = Move::VALUES.sample
    if choice == 'paper'
      self.move = Paper.new
      self.history << choice
    elsif choice == 'rock'
      self.move = Rock.new
      self.history << choice
    else
      self.move = Scissors.new
      self.history << choice
    end
  end
end

class RPSGame
  attr_accessor :human, :computer, :score

  def initialize
    @human = Human.new
    @computer = Computer.new
    @score = Score.new
  end

  def display_welcome_message
    puts "Welcome to RPS, #{human.name}!"
  end

  def display_goodbye_message
    puts "Game over! Thanks for playing RPS!"
    puts "#{human.name}'s History: #{human.history}"
    puts "#{computer.name}'s History: #{computer.history}"
  end

  def display_winner
    puts "#{human.name} chose #{human.move}."
    puts "#{computer.name} chose #{computer.move}."

    if human.move > computer.move
      score.human += 1
      puts "#{human.name} won! The score is now Human: #{score.human}, Computer #{score.computer}"
    elsif human.move < computer.move
      score.computer += 1
      puts "#{computer.name} won! The score is now Human: #{score.human}, Computer #{score.computer}"
    else
      puts "It's a tie!"
    end
  end

  def game_over?
    (score.human >= 10) || (score.computer >= 10)
  end

  def play
    display_welcome_message

    loop do
      human.choose
      computer.choose
      display_winner
      break if game_over?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
