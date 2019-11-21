class Deck

  attr_reader :card, :cards

  def initialize(cards = [])
    @card = card
    @cards = cards
  end

  def count
    @cards.count
  end

  def cards_in_category(category)
    @cards.find_all {|i| i.category == category}
  end
end
