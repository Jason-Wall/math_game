# Game class - Contains and runs game logic, accepts a list of players.

class Game
  @@playerArr = []

  def self.populate_players
    player_count = @@playerArr.length
    puts 'Enter player name'
    player_name = $stdin.gets.chomp

    unless player_name == ''
      @@playerArr[player_count] = Player.new(player_name)
      populate_players
      return
    end
    pp @@playerArr
  end

  def self.start_game
    puts 'the game has started'
  end
end
