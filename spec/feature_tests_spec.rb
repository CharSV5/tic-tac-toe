require 'game'

describe 'Game' do
  context 'two players play a game' do
    it 'plays a full game and decides a winner' do
      game = Game.new
      game.create_players
      game.create_board
      game.board.winning_combinations
      game.x.create_record
      game.x.record.create_scoring
      game.o.create_record
      game.o.record.create_scoring
      game.play(2)
      game.switch_player_turn
      game.play(3)
      game.switch_player_turn
      game.play(5)
      game.switch_player_turn
      game.play(1)
      game.switch_player_turn
      game.play(8)
      game.x.record.scoring.check
      expect(game.winner?).to eq true
    end
  end
end
