class Person
  def initialize(options)
    @options = options
  end

  def description
    name
  end

  def name
    "#{@options[:first_name]} #{@options[:last_name]}"
  end
end

class President < Person
  def description
    "#{name}, president ##{@options[:number]} of The United States"
  end
end

jason_swett = Person.new(
  first_name: 'Jason',
  last_name: 'Swett'
)

abraham_lincoln = President.new(
  first_name: 'Abraham',
  last_name: 'Lincoln',
  number: 16
)

puts jason_swett.description
puts abraham_lincoln.description
