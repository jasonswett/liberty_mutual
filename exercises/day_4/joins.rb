require_relative './db_config'

clean_database

unlogged do
  President.create([
    {
      number: 3,
      first_name: 'Thomas',
      last_name: 'Jefferson'
    },
    {
      number: 16,
      first_name: 'Abraham',
      last_name: 'Lincoln'
    },
    {
      number: 26,
      first_name: 'Theodore',
      last_name: 'Roosevelt'
    }
  ])

  CabinetMember.create([
    {
      president: President.find_by(number: 3),
      first_name: 'Robert',
      last_name: 'Smith'
    },
    {
      president: President.find_by(number: 16),
      first_name: 'John',
      last_name: 'Usher'
    },
    {
      president: President.find_by(number: 26),
      first_name: 'John',
      last_name: 'Hay'
    }
  ])
end

presidents = President.joins(:cabinet_members)
  .where('cabinet_members.first_name = ?', 'John')

puts presidents

separator

cabinet_members = CabinetMember.joins(:president)
  .where('presidents.number > ?', 10)

puts cabinet_members
