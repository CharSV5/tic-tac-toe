require 'game'

describe 'Game' do
  describe '#create_players' do
      subject {Game.new}
      it 'creates a new player called x' do
        subject.create_players
        expect(subject.o).to be_a Players
      end
      it 'creates a new player called o' do
        subject.create_players
        expect(subject.o).to be_a Players
      end
  end
end
