require './turn'
require './player'

class Game

  def initialize
    @player1 = Player.new('p1', 5)
    @player2 = Player.new('p2', 5)
    @players = ['Players', @player1, @player2]
    @current_player = 2
  end

  def play_game
    new_turn = Turn.new

    # Switches players every turn
    if @current_player == 2
      @current_player = 1
    else
      @current_player = 2
    end


    # Check that both players have lives left
    # Continue game if they do
    if @player1.lives != 0 && @player2.lives != 0
      puts "Player 1 Lives: #{@player1.lives}"
      puts "Player 2 Lives: #{@player2.lives}"
      puts "Player #{@current_player}, #{new_turn.show_question}"

      # Take player input
      player_answer = gets.chomp.to_i

      # Check player answer, and dock lives accordingly
      if new_turn.check_answer(player_answer)
        puts "Well done! \n\n"

        # Game is continued through recursion
        play_game
      else
        puts "Sorry, wrong answer! You lose a life :( \n\n"
        @players[@current_player].lose_life
        play_game
      end
    # End game if either player runs out of lives
    elsif @player1.lives == 0
      puts "Player 2 wins!"
    elsif @player2.lives == 0
      puts "Player 1 wins!"
    end
  end
end
