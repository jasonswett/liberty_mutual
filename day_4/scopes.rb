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
      number: 41,
      first_name: 'George',
      last_name: 'Bush'
    },
    {
      number: 43,
      first_name: 'George',
      last_name: 'Bush'
    },
  ])
end

puts President.george
