require 'rspec'

class Document
  def initialize(content)
    @content = content
  end

  def word_counts
    {}
  end
end

RSpec.describe Document do
  describe '#word_counts' do
    it 'returns word counts' do
      document = Document.new('apples apples oranges')
      expect(document.word_counts['apples']).to eq(2)
    end
	end
end
