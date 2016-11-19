def display_board(array)
  puts "#{array[0]} | #{array[1]} | #{array[2]}"
  puts "----------"
  puts "#{array[3]} | #{array[4]} | #{array[5]}"
  puts "----------"
  puts "#{array[6]} | #{array[7]} | #{array[8]}"
end

def player_places_piece(array)
  loop do
    puts "Where would you like to go?"
    player_choice = gets.chomp
    player_choice_as_number = convert_choice_to_number(player_choice)

    if player_choice_as_number == "error"
      puts "That's not a valid move."
    elsif choices[player_choice_as_number] != " "
      puts "That spot is already taken."
    else
      player_move = player_choice_as_number.to_i
      update_array(choices, player_move, "x")
      break
    end
  end
end

def computer_places_piece(array)
  loop do
    numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    computer_choice_as_number = numbers.sample
    if choices[computer_choice_as_number] == " "
      computer_move = computer_choice_as_number.to_i
      update_array(choices, computer_move, "o")
      break
    end
  end
end

def convert_choice_to_number(player_choice)
  if player_choice == "top left"
    return 0
  elsif player_choice == "top center"
    return 1
  elsif player_choice == "top right"
    return 2
  elsif player_choice == "center left"
    return 3
  elsif player_choice == "center center"
    return 4
  elsif player_choice == "center right"
    return 5
  elsif player_choice == "bottom left"
    return 6
  elsif player_choice == "bottom center"
    return 7
  elsif player_choice == "bottom right"
    return 8
  else
    return "error"
  end
end

def update_array(array, array_spot, x_or_o) # starts with number 0 to 8 and replaces with o
  if array[array_spot] == " "
    array.insert(array_spot, x_or_o)
    array.delete_at(array_spot + 1)
  else
    return "error"
  end
end

def who_won(array)
  if array[0] == "x" && array[1] == "x" && array[2] == "x" ||
    array[3] == "x" && array[4] == "x" && array[5] == "x" ||
    array[6] == "x" && array[7] == "x" && array[8] == "x" ||
    array[0] == "x" && array[3] == "x" && array[6] == "x" ||
    array[1] == "x" && array[4] == "x" && array[7] == "x" ||
    array[2] == "x" && array[5] == "x" && array[8] == "x" ||
    array[0] == "x" && array[4] == "x" && array[8] == "x" ||
    array[2] == "x" && array[4] == "x" && array[6] == "x"
    return "player"
  elsif array[0] == "o" && array[1] == "o" && array[2] == "o" ||
    array[3] == "o" && array[4] == "o" && array[5] == "o" ||
    array[6] == "o" && array[7] == "o" && array[8] == "o" ||
    array[0] == "o" && array[3] == "o" && array[6] == "o" ||
    array[1] == "o" && array[4] == "o" && array[7] == "o" ||
    array[2] == "o" && array[5] == "o" && array[8] == "o" ||
    array[0] == "o" && array[4] == "o" && array[8] == "o" ||
    array[2] == "o" && array[4] == "o" && array[6] == "o"
    return "computer"
  elsif array.include?(" ") == false
    return "tie"
  else
    return "nobody"
  end
end

player_move = ''
computer_move = ''

loop do # new game begins
  choices = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts "Welcome to Tic Tac Toe!"

  loop do # new turn begins
    display_board(choices)

INSERT PLAYER PLACES PIECE AND COMP PLACES PIECE

    winner = who_won(choices)
    break if winner != "nobody"
  end

  winner = who_won(choices)
  display_board(choices)
  if winner == "player"
    puts "Congratulations! You won!"
  elsif winner == "computer"
    puts "Sorry! You lost!"
  elsif winner == "tie"
    puts "Cat's game!"
  end

  puts "Would you like to play again? (y/n)"
  play_again = gets.chomp
  if play_again == "y"
    puts "It's on!"
  else
    puts "It's been fun!"
    break
  end
end
