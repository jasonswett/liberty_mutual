class President
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def self.list(presidents)
    presidents.each do |president|
      puts president.name
    end
  end
end

george_washington = President.new(
  first_name: 'George',
  last_name: 'Washington'
)

john_adams = President.new(first_name: 'John', last_name: 'Adams')

puts george_washington.name
puts john_adams.name
puts

President.list([george_washington, john_adams])
