require 'game'

describe 'Game' do
  subject {Game.new}
  describe '#create_players' do
    it 'creates a new player called x' do
      subject.create_players
      expect(subject.o).to be_a Player
    end
    it 'creates a new player called o' do
      subject.create_players
      expect(subject.o).to be_a Player
    end
  end
  # This needs fxing, turn equals both subject.x and subject.o
  describe '#switch_player_turn' do
    it 'switches the turn of the player' do
      subject.create_players
      subject.switch_player_turn
      expect(subject.turn).to eq subject.o
    end
  end
  describe '#play' do
    it 'lets a player play a turn' do
      subject.create_players
      subject.create_board
      subject.play(3)
      expect(subject.board.start).to eq [1, 2, 'x', 4, 5, 6, 7, 8, 9]
    end
  end
end
