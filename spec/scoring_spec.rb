require 'scoring'

describe 'Scoring' do
  describe '#check' do
    it 'checks all the combinations of three field played' do
      subject = Scoring.new([1, 3, 4, 5, 9])
      expect(subject.check).to eq [[1, 3, 4], [1, 3, 5], [1, 3, 9], [1, 4, 5],
                                  [1, 4, 9], [1, 5, 9], [3, 4, 5], [3, 4, 9],
                                  [3, 5, 9], [4, 5, 9]]
    end
  end
end
