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

  describe '#play' do
    before (:each) do
      board = double('board', start: [1, 2, 3, 4, 5, 6, 7, 8, 9])
      subject.create_board(board)
      subject.x.create_record
      subject.play(3)
    end
    it 'lets a player play a turn' do
      expect(subject.board.start).to eq [1, 2, 'x', 4, 5, 6, 7, 8, 9]
    end
    context 'player tries to play same field twice'
    it 'returns nil' do
      expect(subject.play(3)).to eq nil
    end
  end
  before(:each) do
    board = double('board')
    allow(board).to receive_messages(start: [1, 2, 3, 4, 5, 6, 7, 8, 9],
                                     combinations: [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8],
                                                    [3, 6, 9], [1, 5, 9], [3, 5, 7]])
    subject.create_board(board)
    subject.x.create_record
    subject.play(1)
    subject.play(4)
    subject.play(7)
    subject.x.record.create_scoring
    subject.x.record.scoring.check
  end
  describe '#winner?' do
    it 'knows when someone wins' do
      expect(subject.winner?).to eq true
    end
  end
  describe 'game_over' do
    it 'knows when the game is over' do
      subject.winner?
      expect(subject.game_over).to eq true
    end
  end
  it 'causes play to return nil if true' do
    subject.winner?
    expect(subject.play(9)).to eq nil
  end
end
