# Game class - Contains and runs game logic, accepts a list of players.

class Game

  
  def self.populate_players
  puts "Enter player name"
  player_name = $stdin.gets.chomp
  puts player_name
  end
    
    
    
    def self.start_game
      puts 'the game has started'
    end
end

