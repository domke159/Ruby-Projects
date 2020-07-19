require_relative '../Tic_Tac_Toe/player.rb'
require_relative '../Tic_Tac_Toe/game.rb'

loop do
  puts "\nWelcome to the Tic Tac Toe Game \n\n"

  puts 'Player 1, please enter your name: '
  player1 = Player.new(gets.chomp.capitalize, 'O')

  puts "\nPlayer 2, please enter your name: \n"
  player2 = Player.new(gets.chomp.capitalize, 'X')

  game = Game.new(player1, player2)
  game.play

  puts "\nPlay again (Y/N)?"
  gets.chomp.capitalize == 'Y' ? next : exit
end
