class CardGenerator

  attr_reader :new_deck

  def initialize
    @filename = 'lib/cards.txt'
    @array_of_cards_as_strings = []
    @new_cards = []
    @new_deck = []
  end

  def cards
   File.open(@filename).each do |line|
     line_split = line.chomp("\n").split(',')
     @array_of_cards_as_strings << line_split
   end
    @array_of_cards_as_strings.each do |question|
      new_card = Card.new(question[0],question[1],question[2])
      @new_cards << new_card
    end
    @new_deck = Deck.new(@new_cards)
  end
end
