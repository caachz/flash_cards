class Round
  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_of_turns = 0
  end

  def current_card
    #needs to cycle through deck.
    deck.cards[@number_of_turns]
  end

  def take_turn(guess)
    current_turn = Turn.new(guess, current_card)
    @turns << current_turn
    @number_of_turns += 1
    current_turn
  end

  def number_correct
    total_correct = 0
    @turns.each do |turn|
      if turn.card.answer == turn.guess
        total_correct += 1
      end
    end
    total_correct
  end
end
