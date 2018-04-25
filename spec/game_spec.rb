require 'game'

describe 'Game' do
  subject { Game.new }
  before(:each) do
    subject.create_players
  end
  describe '#create_players' do
    it 'creates a new player called x' do

      expect(subject.o).to be_a Player
    end
    it 'creates a new player called o' do

      expect(subject.o).to be_a Player
    end
  end
  describe '#switch_player_turn' do
    it 'switches the turn of the player' do

      subject.switch_player_turn
      expect(subject.turn).to eq subject.o
    end
  end
  # Not testing in isolation
  describe '#play' do
    it 'lets a player play a turn' do

      board = double('board', start: [1, 2, 3, 4, 5, 6, 7, 8, 9])
      subject.create_board(board)
      subject.x.create_record
      subject.play(3)
      expect(subject.board.start).to eq [1, 2, 'x', 4, 5, 6, 7, 8, 9]
    end
  end
  describe '#winner?' do
    it 'knows when someone wins' do

      # board = double('board', start: [1, 2, 3, 4, 5, 6, 7, 8, 9])
      subject.create_board
      subject.x.create_record
      subject.play(1)
      subject.play(4)
      subject.play(7)
      subject.x.record.create_scoring
      subject.x.record.scoring.check
      expect(subject.winner?).to eq true
    end
  end
end
