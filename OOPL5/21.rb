class Card
  SUITS = ['H', 'D', 'S', 'C']
  FACES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

  def initialize(suit, face)
    @suit = suit
    @face = face
  end

  def to_s
    "The #{face} of #{suit}"
  end

  def face
    case @face
    when 'J' then 'Jack'
    when 'Q' then 'Queen'
    when 'K' then 'King'
    when 'A' then 'Ace'
    else
      @face
    end
  end

  def suit
    case @suit
    when 'H' then 'Hearts'
    when 'D' then 'Diamonds'
    when 'S' then 'Spades'
    when 'C' then 'Clubs'
    end
  end

  def ace?
    face == 'Ace'
  end

  def king?
    face == 'King'
  end

  def queen?
    face == 'Queen'
  end

  def jack?
    face == 'Jack'
  end
end


module Hand
  def show_hand
    cards.each do |card|
      puts "=> #{card}"
    end

    puts "Total: #{total}"
    puts ""
  end

  def total
    total = 0
    cards.each do |card|
      if card.ace?
        total += 11
      elsif card.jack? || card.queen? || card.king?
        total += 10
      else
        total += card.face.to_i
      end
    end

    # Correct for Aces...
    cards.select(&:ace?).count.times do
      break if total <= 21
      total -= 10
    end

    total
  end

  def add_card(new_card)
    cards << new_card
  end

  def busted?
    total > 21
  end
end

class Participant
  include Hand

  attr_accessor :cards
  def initialize
    @cards = []
  end
end

class Player < Participant
  def show_flop
    show_hand
  end
end

class Dealer < Participant
  def show_flop
    puts "=> #{cards.first}"
    puts "=> ??"
    puts ""
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::FACES.each do |face|
        @cards << Card.new(suit, face)
      end
    end

    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end
end

class Game
  attr_accessor :deck, :player, :dealer

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def reset
    self.deck = Deck.new
    player.cards = []
    dealer.cards = []
  end

  def deal_cards
    2.times do
      player.add_card(deck.deal_one)
      dealer.add_card(deck.deal_one)
    end
  end

  def show_flop
    player.show_flop
    dealer.show_flop
  end

  def player_turn
    puts "Player's turn..."
    loop do
      puts "Would you like to (h)it or (s)tay?"
      answer = nil
      loop do
        answer = gets.chomp.downcase
        break if ['h', 's'].include?(answer)
        puts "Sorry, must be h or s."
      end

      if answer == 's'
        puts "You stay!"
        break
      elsif answer == 'h'
        puts "You hit!"
        player.add_card(deck.deal_one)
        player.show_hand
        break if player.busted?
      end
    end
  end

  def dealer_turn
    puts "Dealer's turn..."
    loop do
      if dealer.total >= 17 && !dealer.busted?
        puts "Dealer stays!"
        break
      elsif dealer.busted?
        break
      else
        puts "Dealer hits!"
        new_card = deck.deal_one
        puts "Dealer pulls the #{new_card}."
        dealer.add_card(new_card)
      end
    end
  end

  def show_busted
    if player.busted?
      puts "It looks like you busted! Dealer wins!"
    elsif dealer.busted?
      puts "It looks like the dealer busted! You win!"
    end
  end

  def show_cards
    player.show_hand
    dealer.show_hand
  end

  def show_result
    if player.total > dealer.total
      puts "You win!"
    elsif dealer.total > player.total
      puts "Dealer wins!"
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    puts "Would you like to play again? (y/n)"
    answer = nil
    loop do
      answer = gets.chomp.downcase
      break if ['y', 'n'].include?(answer)
      puts "That is not a valid answer."
    end

    answer == 'y'
  end

  def start
    loop do
      system 'clear'
      deal_cards
      show_flop

      player_turn
      if player.busted?
        show_busted
        if play_again?
          reset
        else
          break
        end
      end

      dealer_turn
      if dealer.busted?
        show_busted
        if play_again?
          reset
        else
          break
        end
      end

      show_cards
      show_result

      if play_again?
        reset
      else
        break
      end

      puts "Thank you for playing Twenty-One. Goodbye!"
    end
  end
end

Game.new.start
