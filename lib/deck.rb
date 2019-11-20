class Deck

  attr_reader :card, :stack

  def initialize
    @cards = card
    @stack = []
  end

  def add_card(card)
    @stack << card
  end
end
