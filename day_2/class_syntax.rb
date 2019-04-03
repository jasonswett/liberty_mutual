class President
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

george_washington = President.new(first_name: 'George', last_name: 'Washington')
puts george_washington.name
