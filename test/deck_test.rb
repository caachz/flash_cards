require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_card1_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    assert_instance_of Card, card_1
  end

  def test_card2_exists
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)

    assert_instance_of Card, card_2
  end

  def test_card3_exists
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    assert_instance_of Card, card_3
  end

  def test_it_has_card_1
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new
    deck.add_card(card_1)
    deck.add_card(card_2)
    deck.add_card(card_3)
    assert_equal card_1, deck.cards[0]
  end

  def test_it_has_all_cards
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new
    deck.add_card(card_1)
    deck.add_card(card_2)
    deck.add_card(card_3)

    assert_equal [card_1, card_2, card_3] ,deck.cards
  end

  def test_it_can_count
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new
    deck.add_card(card_1)
    deck.add_card(card_2)
    deck.add_card(card_3)

    assert_equal 3, deck.count
  end

  def test_it_sorts_cards_to_correct_category_STEM
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new
    deck.add_card(card_1)
    deck.add_card(card_2)
    deck.add_card(card_3)

    assert_equal [card_2,card_3], deck.cards_in_category(:STEM)
  end

  def test_it_sorts_cards_to_correct_category_geography
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    deck = Deck.new
    deck.add_card(card_1)
    deck.add_card(card_2)
    deck.add_card(card_3)

    assert_equal [card_1], deck.cards_in_category(:Geography)
  end

  def test_it_doesnt_categorize_wrong
  end
end
