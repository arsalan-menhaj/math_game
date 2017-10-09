require './game'

def start_game
  new_game = Game.new
  new_game.play_game

  # When game ends, ask user
  # if they would like to play
  # again
  puts "Play again? (y/n)"
  response = gets.chomp
  if response == 'y'
    puts "\n"
    start_game
  end
end

start_game