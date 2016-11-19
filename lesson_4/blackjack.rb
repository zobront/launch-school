CARD_VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
DEALER_HITS_UNTIL = 16
BUST = 21

def deal(deck, player_hand, dealer_hand)
  2.times do
    player_hand << deck.pop
    dealer_hand << deck.pop
  end
  player_hand.flatten!
  dealer_hand.flatten!
  deck
end

def hit(deck, hand)
  hand << deck.pop
  hand.flatten!
  deck
end

def calculate(hand)
  hand_value = 0
  hand.each do |card|
    if card == 'A'
      hand_value += 11
    elsif card.to_i == 0
      hand_value += 10
    else
      hand_value += card.to_i
    end
  end

  hand.select { |card| card == 'A' }.count.times do
    hand_value -= 10 if hand_value > BUST
  end

  hand_value
end

def busted?(hand)
  return true if calculate(hand) > BUST
end

def dealer_turn(deck, hand)
  while calculate(hand) <= DEALER_HITS_UNTIL
    hit(deck, hand)
  end
end

def display_hands(hand1, hand2)
  puts "Player Hand: #{hand1}"
  puts "Total: #{calculate(hand1)}"
  puts "Dealer Hand: #{hand2[0]}, ?"
  puts "Total: ?"
end

def display_hands_final(hand1, hand2)
  puts "Player Hand: #{hand1}"
  puts "Total: #{calculate(hand1)}"
  puts "Dealer Hand: #{hand2}"
  puts "Total: #{calculate(hand2)}"
  case who_won?(hand1, hand2)
  when :dealer_via_bust
    puts "You busted! Dealer wins!"
  when :player_via_bust
    puts "Dealer busted! You win!"
  when :player
    puts "You win!"
  when :dealer
    puts "Dealer wins!"
  when :tie
    puts "It's a tie!"
  end
end

def who_won?(player_hand, dealer_hand)
  if busted?(player_hand)
    :dealer_via_bust
  elsif busted?(dealer_hand)
    :player_via_bust
  elsif calculate(player_hand) > calculate(dealer_hand)
    :player
  elsif calculate(dealer_hand) > calculate(player_hand)
    :dealer
  else
    :tie
  end
end

loop do

  player_score = 0
  dealer_score = 0

  loop do

    deck = []

    CARD_VALUES.each do |card|
      deck.push(card)
      deck.push(card)
      deck.push(card)
      deck.push(card)
    end

    player_hand = []
    dealer_hand = []

    deck.shuffle!
    deck = deal(deck, player_hand, dealer_hand)

    while !busted?(player_hand)
      puts "***"
      display_hands(player_hand, dealer_hand)
      puts "Hit or stay? (h / s)"
      hit_or_stay = gets.chomp
      if hit_or_stay == 'h'
        hit(deck, player_hand)
      elsif hit_or_stay == 's'
        break
      else
        puts "That's not a valid option."
        hit_or_stay = 'h'
      end
    end

    puts "**"

    if !busted?(player_hand)
      dealer_turn(deck, dealer_hand)
    end

    display_hands_final(player_hand, dealer_hand)

    if who_won?(player_hand, dealer_hand) == :player || who_won?(player_hand, dealer_hand) == :player_via_bust
      player_score += 1
    elsif who_won?(player_hand, dealer_hand) == :dealer || who_won?(player_hand, dealer_hand) == :dealer_via_bust
      dealer_score += 1
    end

    puts "**"
    puts "Player Score: #{player_score}"
    puts "Dealer Score: #{dealer_score}"

    break if player_score >= 5 || dealer_score >= 5
  end

  if player_score >= 5
    puts "Congratulations on your victory!"
  elsif dealer_score >= 5
    puts "Sorry for your loss!"
  end

  puts "Would you like to play again? (y / n)"
  play_again = gets.chomp

  break unless play_again.downcase.start_with?('y')
end
