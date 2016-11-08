SHORT_FORMS = %w(r p x l s)
FULL_WORDS = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'lizard' && second == 'paper')
end

def longformify(word)
  if word == 'r'
    word = 'rock'
  elsif word == 'p'
    word = 'paper'
  elsif word == 'x'
    word = 'scissors'
  elsif word == 'l'
    word = 'lizard'
  elsif word == 's'
    word = 'spock'
  end
end

def winner?(player, computer)
  if win?(player, computer)
    'player_wins'
  elsif win?(computer, player)
    'computer_wins'
  end
end

def display_results(winner_id)
  if winner_id == 'player_wins'
    prompt("You won this round!")
  elsif winner_id == 'computer_wins'
    prompt("Computer won this round!")
  else
    prompt("It's a tie! No points awarded.")
  end
end

player_score = 0
computer_score = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: rock(r), paper(p), scissors(x), lizard(l), spock(s)?")
    choice = gets.chomp

    if SHORT_FORMS.include?(choice.downcase)
      longformify(choice.downcase)
      break
    elsif FULL_WORDS.include?(choice.downcase)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = FULL_WORDS.sample

  puts "You chose: #{choice}; Computer chose: #{computer_choice}."

  if winner?(choice, computer_choice) == 'player_wins'
    player_score += 1
  elsif winner?(choice, computer_choice) == 'computer_wins'
    computer_score += 1
  end

  display_results(winner?(choice, computer_choice))

  puts "***"
  puts "SCORE UPDATE:"
  prompt("Player score: #{player_score}")
  prompt("Computer score: #{computer_score}")
  puts "***"

  break unless player_score < 5 && computer_score < 5
end

if player_score > computer_score
  prompt("You win #{player_score}-#{computer_score}. Congrats!")
else
  prompt("You lose #{computer_score}-#{player_score}. Maybe next time!")
end
