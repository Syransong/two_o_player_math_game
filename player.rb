class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def incorrect
    @lives -= 1
  end

  def is_alive?
    @lives >= 1
  end

  def turn
    new_question = Question.new
    puts "What does #{new_question.num1} plus #{new_question.num2} equal?"
    
    player_answer = gets.chomp

    if new_question.validate_answer(player_answer)
      puts "YES! You are correct."
    else 
      puts "Someone needs to review their arithmetic... "
      incorrect
    end
  end
end