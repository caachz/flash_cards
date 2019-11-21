class Deck

  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
  end

  def count
    @cards.count
  end

  def cards_in_category(category)
    @cards.find_all {|i| i.category == category}
  end
end
