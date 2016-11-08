module MathGame
  class Question
    def initialize (turn, player1, player2)
      @turn = turn
      @player1 = player1
      @player2 = player2
    end

    def ask
      num1 = rand(1..20)
      num2 = rand(1..20)

      if @turn.count % 2 != 0
        player = @player1
      else
        player = @player2
      end

      puts "#{player.name}: What does #{num1} plus #{num2} equal?"

      if Integer(gets.chomp) != (num1 + num2)
        player.lives -= 1
        puts "#{player.name}: You are wrong, -1 life"
      else
        puts "#{player.name}: That is correct"
      end

    end
  end
end
