require 'rspec'

class President
  def initialize(options)
    @first_name    = options[:first_name]
    @last_name     = options[:last_name]
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

RSpec.describe President do
  before do
    @president = President.new(
      first_name: 'Theodore',
      last_name: 'Roosevelt'
    )
  end

  describe '#name' do
    it 'returns the full name' do
      expect(@president.name).to eq('Theodore Roosevelt')
    end
  end
end
