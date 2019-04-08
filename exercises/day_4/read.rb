require_relative './db_config'

clean_database

unlogged do
  President.create([
    {
      number: 1,
      first_name: 'George',
      last_name: 'Washington'
    },
    {
      number: 2,
      first_name: 'John',
      last_name: 'Adams'
    },
    {
      number: 3,
      first_name: 'Thomas',
      last_name: 'Jefferson'
    },
  ])
end

separator

puts 'President.all:'
puts President.all

separator
puts 'President.first:'
puts President.first

separator
puts 'President.find_by:'
john_adams = President.find_by(number: 2)
puts john_adams

separator
puts 'President.where:'
later_presidents = President.where('number > ?', 1)
puts later_presidents
