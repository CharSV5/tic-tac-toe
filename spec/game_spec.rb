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
  describe '#switch_player_turn' do
    let(:turn) { double("turn") }
    it 'switches the turn of the player' do
      allow(turn).to receive(:x)
      subject.switch_player_turn
      expect(subject.turn).to eq subject.o
    end
  end
  describe ''
end
