class Round
  attr_reader :deck, :turns, :total_correct_by_category, :number_correct,
  :number_of_turns, :correct_cards, :current_turn

  def initialize(deck = CardGenerator.new.cards)
    @deck = deck
    @turns = []
    @number_of_turns = 0
    @correct_cards = []
    @total_correct_by_category = 0
    @number_correct = 0
    @current_turn = current_turn
  end

  def current_card
    @deck.cards[@number_of_turns]
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
    total_correct_category = []
    total_category_answered = []
    correct_cards.each do |correct_answer|
      if correct_answer.card.category == category
        total_correct_category << correct_answer
      end
    end
    turns.each do |turn|
      if turn.card.category == category
        total_category_answered << turn
      end
    end
    total_correct_category.length.to_f/total_category_answered.length.to_f*100
  end

  def start
  puts "Welcome! You're playing with #{@deck.cards.length} cards.\n-------------------------------------------------"
  @deck.cards.length.times do
    puts "This is card number #{@number_of_turns+1} of #{@deck.cards.length}\nQuestion: #{deck.cards[number_of_turns].question}\n"
    player_answer = gets.chomp
    take_turn(player_answer)
    puts @current_turn.feedback
  end
  puts "****** Game over! ******\nYou had #{@correct_cards.length} correct guesses out of #{@deck.cards.length} for a total score of #{percent_correct.round(2)}%"
  turn_incrementer = 0
  category_repeater = []
  turns.each do |turn|
    if category_repeater.include? turns[turn_incrementer].card.category
    else
      puts "#{turns[turn_incrementer].card.category} - #{percent_correct_by_category(turns[turn_incrementer].card.category)}% correct"
      category_repeater << turns[turn_incrementer].card.category
      turn_incrementer += 1
    end
  end
  end
end
