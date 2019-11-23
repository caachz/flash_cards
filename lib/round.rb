class Round
  attr_reader :deck, :turns, :total_correct_by_category, :number_correct,
  :number_of_turns, :correct_cards, :current_turn

  def initialize(deck)
    @deck = deck
    @turns = []
    @number_of_turns = 0
    @correct_cards = []
    @total_correct_by_category = 0
    @number_correct = 0
    @current_turn = current_turn
  end

  def current_card
    deck.cards[@number_of_turns]
  end

  def take_turn(guess)
    @current_turn = Turn.new(guess, current_card)
    @turns << @current_turn
    @number_of_turns += 1
    if @current_turn.correct?
      @correct_cards << @current_turn
    end
    @current_turn
  end

  def number_correct
    @number_correct = @correct_cards.length
  end

  def number_correct_by_category(category)
    total_correct_category = 0
    correct_cards.each do |correct_answer|
      if correct_answer.card.category == category
        total_correct_category += 1
      end
    end
    total_correct_category
  end

  def percent_correct
    number_correct.to_f/number_of_turns.to_f*100
  end

  def percent_correct_by_category(category)
    total_correct_category = 0
    total_category_answered = 0
    correct_cards.each do |correct_answer|
      if correct_answer.card.category == category
        total_correct_category += 1
      end
    end
    turns.each do |turn|
      if turn.card.category == category
        total_category_answered += 1
      end
    end
    total_correct_category.to_f/total_category_answered.to_f*100
  end

  def start
  puts "Welcome! You're playing with #{@deck.cards.length} cards.\n
  -------------------------------------------------\n
  This is card number #{@number_of_turns+1}\n
  Question: #{deck.cards[number_of_turns].question}\n
  Answer => #{answer = gets.chomp}"
  puts answer

  end

end
