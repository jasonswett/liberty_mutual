require 'rspec'

def upcase_all(words)
  words.map(&:upcase)
end

RSpec.describe 'upcase_all' do
  it 'upcases all the words' do
    expect(upcase_all(['hello', 'world'])).to eq(['HELLO', 'WORLD'])
  end
end
