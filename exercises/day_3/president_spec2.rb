require 'rspec'

RSpec.describe President do
  describe '#name' do
    it 'returns the full name' do
      president = President.new(first_name: 'John', last_name: 'Adams')
      expect(president.name).to eq('John Adams')
    end
  end
end
