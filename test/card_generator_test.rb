require 'minitest/autorun'
require 'minitest/pride'
require './lib/card_generator'
 require './lib/cards.txt'

class CardGeneratorTest < Minitest::Test
  def test_it_exists
    card_gen = CardGenerator.new("card_questions.txt")

    assert_instance_of CardGenerator, card_gen
  end

  def test_it_contains_cards
    filename = "./lib/cards.txt"
    cards = CardGenerator.new(filename)

    assert_equal "What is 5 + 5?,10,STEM"

  end
end
