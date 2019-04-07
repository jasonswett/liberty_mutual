require_relative './db_config'

george = President.new(
  number: 1,
  first_name: 'George',
  last_name: 'Washington'
)

clean_database

unlogged do
  george.save

  President.create(
    number: 2,
    first_name: 'John',
    last_name: 'Adams'
  )
end

george.first_name = 'Steve'
george.save
puts george

separator
george.update(first_name: 'Greg')
puts george

separator
President.update_all(first_name: 'Burt')
President.all.each { |p| puts p }
