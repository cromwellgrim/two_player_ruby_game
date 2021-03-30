require './questions'
require './two_player'
require './gameplay'

puts "This is the TwO-O-Player Ruby Math Game!"
puts "1st Player, please enter a name: "

p_name1 = gets.chomp
player1= Player.new(p_name1)

puts "2nd Player, please enter a name: "

p_name2 = gets.chomp
player2 = Player.new(p_name2)

puts "Game On!"

game = Game.new(player1, player2)

while game.player1.alive? && game.player2.alive?
  puts "------- NEW TURN -------"
  puts "#{game.current_player.name}, your turn!"

  question = Question.new
  question.pose_question
  player_control = gets.chomp

  if question.result(player_control)
    puts "You got it right!"
  else
    puts "That is incorrect! Lose a life!"
    game.current_player.life_down
  end

  game.player_switch
  game.life_count

end

puts "------- GAME OVER -------"

game.winner?

puts "#{game.winner.name} is the winner, they have #{game.winner.lives} lives left!"