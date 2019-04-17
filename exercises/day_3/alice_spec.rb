require 'rspec'

class Document
  def initialize(content)
    @content = content
  end
end

RSpec.describe Document do
  describe '#words' do
    it 'returns words as an array' do
    end
  end
end
