require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require './lib/card'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    card_gen = CardGenerator.new("cards.txt")

    assert_instance_of CardGenerator, card_gen
  end

  def test_it_contains_cards
    filename = "lib/cards.txt"
    list_of_cards = CardGenerator.new(filename).cards

    assert_instance_of Card, list_of_cards[0]
  end
end
