class Deck

  attr_reader :card, :cards

  def initialize
    @card = card
    @cards = []
  end

  def add_card(card)
    @cards << card
  end

  def count
    @cards.count
  end

  def cards_in_category(category)
    @cards.find_all {|i| i.category == category}
  end
end
