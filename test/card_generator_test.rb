require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    card_gen = CardGenerator.new

    assert_instance_of CardGenerator, card_gen
  end

  def test_it_contains_cards
    list_of_cards = CardGenerator.new.cards

    # assert_instance_of Card, list_of_cards[0]
  end
end
