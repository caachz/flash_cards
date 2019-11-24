class CardGenerator

  def initialize(filename)
    @filename = filename
    @array_of_cards_as_strings = []
  end

  def cards
   File.open(@filename).each do |line|
     line_split = line.chomp("\n").split(',')
     @array_of_cards_as_strings << line_split
   end
    p @array_of_cards_as_strings
  end
end
