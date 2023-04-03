# Main entrypoint for application

# Require in classes:
require './Game'

# Main Thread:
first = Game.new
pp first.run_game
