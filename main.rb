# Main entrypoint for application

# Require in classes:
require './Player'
require './Game'

# Main Thread:

bill = Player.new('Bill')

puts bill.name
puts bill.lives

Game.start_game

