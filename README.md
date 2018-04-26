Practice tech test making a game of tic tac toe in Ruby. Two players take it in turn to claim a field on a 3 x 3 board. The winner is the first player to get three in a row, column or diagonal line.

This programme can be easily used with a GUI or be ran from the command line. The commands for an example game are:

game = Game.new   (creates a new instance of the main class)

game.create_players   (creates two instances of player class called x and o)

game.create_board   (creates an instance of board class)

game.board.winning_combinations   (creates all the possible the winning combinations)

game.x.create_record  (creates a record of all plays for x)

game.x.record.create_scoring   (creates an instance of scoring for x)

game.o.create_record   (creates a record of all plays for o)

game.o.record.create_scoring   (creates an instance of scoring for o)

* optional - game.start_game   (this will randomise who starts, otherwise x starts)

game.play(2)   (x plays field 2)

game.switch_player_turn   (swicthes the turn of the player)

game.play(3)

game.switch_player_turn

game.play(5)

game.switch_player_turn

game.play(1)

game.switch_player_turn

game.play(8)

game.x.record.scoring.check   (should be run once the first player plays 3 fields)

game.winner?   (will return nil if player x has not won, true if they have)

After game.winner? returns true, game_over also returns true causing game.play to return nil if further attempts are made.


To run tests:
```
bundle install
rspec
```
Simplecov will also provide test coverage. A detailed view of this report is found by running
```
open coverage/index.html
```
