require 'board'

describe 'Board' do
  subject { Board.new }
  it 'creates a board on initialize' do
    expect(subject.start).to eq [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
