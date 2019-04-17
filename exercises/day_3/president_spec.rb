require 'rspec'

RSpec.describe President do
  describe '#description' do
    context '1st president' do
      it 'adds the right suffix' do
        president = President.new(number: 1)
        expect(president.description).to eq('1st president')
      end
    end

    context '2nd president' do
      it 'adds the right suffix' do
        president = President.new(number: 2)
        expect(president.description).to eq('2nd president')
      end
    end
  end
end
