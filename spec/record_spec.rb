require 'record'

describe 'Record' do
  subject {Record.new}
  describe '#record_play' do
    it 'records the plays to the history array' do
      subject.record_play(2)
      subject.record_play(3)
      expect(subject.history).to eq [2, 3]
    end
  end
end
