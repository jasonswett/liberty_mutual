require 'rspec'
require 'date'

class President
  def initialize(options)
    @first_name    = options[:first_name]
    @last_name     = options[:last_name]
    @date_of_birth = options[:date_of_birth]
    @date_of_death = options[:date_of_death]
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def age_at_death
    return nil unless @date_of_death
    age = @date_of_death.year - @date_of_birth.year
    @date_of_death.yday >= @date_of_birth.yday ? age : age - 1
  end
end

RSpec.describe President do
  describe '#name' do
    it 'returns the full name' do
      president = President.new(
        first_name: 'George',
        last_name: 'Washington'
      )

      expect(president.name).to eq('George Washington')
    end
  end

  describe '#age_at_death' do
    context 'deceased president, died before birthday' do
      it 'returns the age at death' do
        president = President.new(
          date_of_birth: Date.new(1735, 10, 30),
          date_of_death: Date.new(1826, 7, 4)
        )

        expect(president.age_at_death).to eq(90)
      end
    end

    context 'deceased president, died after birthday' do
      it 'returns the age at death' do
        president = President.new(
          date_of_birth: Date.new(1732, 2, 22),
          date_of_death: Date.new(1799, 12, 14)
        )

        expect(president.age_at_death).to eq(67)
      end
    end

    context 'living president' do
      it 'returns nil' do
        president = President.new(
          date_of_birth: Date.new(1961, 8, 4),
        )

        expect(president.age_at_death).to eq(nil)
      end
    end
  end
end
