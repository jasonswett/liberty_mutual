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

george_bushes = President.where(
  'first_name = ? and last_name = ?',
  'George',
  'Bush'
)

puts george_bushes

separator

george_bushes = President.where(
  'first_name = :first_name and last_name = :last_name',
  first_name: 'George',
  last_name: 'Bush'
)

puts george_bushes

separator

george_bushes = President.where(
  first_name: 'George',
  last_name: 'Bush'
)

puts george_bushes
