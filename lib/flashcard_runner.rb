require './lib/card.rb'
require './lib/deck.rb'
require './lib/turn.rb'
require './lib/round.rb'
require './lib/card_generator'

# card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
# card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
# card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
# deck = Deck.new([card_1, card_2, card_3])
round = Round.new

# def start
# puts "Welcome! You're playing with #{deck.length} cards.\n
# -------------------------------------------------\n
# This is card number #{round.number_of_turns+1}\n
# Question: #{round.deck.cards[0].question}\n
# Answer here => #{gets.chomp}"
# end
round.start
