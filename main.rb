require './player.rb'
require './turn.rb'
require './question.rb'
require './game.rb'

p1 = MathGame::Player.new("Player 1")
p2 = MathGame::Player.new("Player 2")
turn = MathGame::Turn.new()
question = MathGame::Question.new(turn, p1, p2)
game = MathGame::Game.new(p1, p2)

while p1.lives != 0 and p2.lives != 0 do
  question.ask
  game.outputScore
  turn.increment
end
game.over
