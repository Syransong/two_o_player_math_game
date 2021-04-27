class Question

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @solution = @num1 + @num2
  end

  def ask_question
    puts "What does #{num1} plus #{number2} equal?"
  end

  def player_response
    @player_ans = gets.chomp

    if @player_ans == @solution
      puts "YES! You are correct."
    else 
      puts "Someone needs to review their arithmetic... "
    end
  end
end