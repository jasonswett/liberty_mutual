require_relative './db_config'

class President < ActiveRecord::Base
end

President.destroy_all

p = President.new(
  number: 1,
  first_name: 'George',
  last_name: 'Washington'
)

p.save
puts p.id

President.destroy_all

p = President.create(
  number: 1,
  first_name: 'George',
  last_name: 'Washington'
)

puts p.id
