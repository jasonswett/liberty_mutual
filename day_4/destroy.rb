require_relative './db_config'
require_relative './president'

unlogged do
  President.destroy_all

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

President.first.destroy
separator
President.destroy_all
