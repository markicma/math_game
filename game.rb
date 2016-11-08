module MathGame
  class Game
    def initialize (player1, player2)
      @player1 = player1
      @player2 = player2
    end

    def over
      puts "----- GAME OVER -----"
      if @player1.lives == 0
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      else
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      end
      puts "Good bye!"
    end
  end
end
