require_relative './db_config'

clean_database

p = President.new(
  number: 1,
  first_name: 'George',
  last_name: 'Washington'
)

p.save
puts p.id

separator

clean_database

p = President.create(
  number: 1,
  first_name: 'George',
  last_name: 'Washington'
)

puts p.id
