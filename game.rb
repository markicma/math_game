module MathGame
  class Game
    def initialize (player1, player2)
      @player1 = player1
      @player2 = player2
    end

    def outputScore
      puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
      puts "----- NEW TURN -----"
    end

    def over
      if @player1.lives == 0
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      else
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      end
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end
end
