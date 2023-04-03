# Game class - Contains and runs game logic, accepts a list of players.

require './Player'

class Game
  def initialize
    @playerArr = []
    @player_count = 0
    @player_turn = 0
  end

  def populate_players
    @player_count = @playerArr.length
    puts 'Enter player name'
    player_name = $stdin.gets.chomp

    return if player_name == ''

    @playerArr.push(Player.new(player_name))
    populate_players
    nil
  end

  def ask_question?
    a = rand(0..20)
    b = rand(0..20)
    puts "#{@playerArr[@player_turn].name} what does #{a} plus #{b} equal?"
    answer = $stdin.gets.chomp.to_i

    answer == a + b
  end

  def eliminate
    return unless @playerArr[@player_turn].lives < 1

    puts "#{@playerArr[@player_turn].name} eliminated!"
    @playerArr.delete_at(@player_turn)
    @player_turn -= 1
    @player_count = @playerArr.length
  end

  def turn
    player = @playerArr[@player_turn]
    if ask_question?
      puts 'correct'
    else
      player.lose_life
      puts "wrong, #{player.lives} remaining..."
      eliminate
    end

    @player_turn += 1
    return unless @player_turn > @player_count - 1

    @player_turn = 0
  end

  def run_game
    populate_players
    @player_turn = rand(0..@player_count - 1)
    turn while @player_count > 1
    puts "#{@playerArr[0].name} is the winner!!"
  end
end
