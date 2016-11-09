class MathGame
  class Question
    attr_reader :turn
    def initialize (turn)
      @turn = turn
    end

    def ask
      num1 = rand(1..20)
      num2 = rand(1..20)
      player = @turn.player

      puts "----- NEW TURN -----"
      puts "#{player.name}: What does #{num1} plus #{num2} equal?"

      answer = Integer(gets.chomp)

      if answer != (num1 + num2)
        player.lives -= 1
        puts "#{player.name}: You are wrong, -1 life"
        puts "P1: #{@turn.player1.lives}/3 vs. P2: #{@turn.player2.lives}/3"
      else
        puts "#{player.name}: That is correct"
      end

      @turn.increment

    end
  end
end
