class Round
  attr_reader :deck, :turns, :total_correct_by_category, :number_correct, :number_of_turns

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_of_turns = 0
    @total_correct_by_category = {}
    @number_correct = 0
  end

  def current_card
    deck.cards[@number_of_turns]
  end

  def take_turn(guess)
    current_turn = Turn.new(guess, current_card)
    @turns << current_turn
    @number_of_turns += 1
    @turns.each do |turn|
      if turn.card.answer == turn.guess
        @total_correct_by_category = @total_correct_by_category.merge(Hash[turn.card.category, 1])
      end
    end
    current_turn
  end

  def number_correct
    @number_correct = @total_correct_by_category.length
  end

  def number_correct_by_category(category)

  end
end
