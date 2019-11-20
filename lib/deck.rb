class Deck

  attr_reader :card, :cards

  def initialize
    @card = card
    @cards = []
  end

  def add_card(card)
    @cards << card
  end
end
