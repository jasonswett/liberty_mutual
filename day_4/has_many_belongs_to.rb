require_relative './db_config'
require_relative './president'
require_relative './cabinet_member'

lincoln = President.new(
  number: 16,
  first_name: 'Abraham',
  last_name: 'Lincoln'
)

clean_database
unlogged { lincoln.save }

seward = CabinetMember.create(
  president: lincoln,
  first_name: 'William',
  last_name: 'Seward'
)
puts seward
unlogged { CabinetMember.destroy_all }

separator

seward = lincoln.cabinet_members.create(
  first_name: 'William',
  last_name: 'Seward'
)
puts seward
unlogged { CabinetMember.destroy_all }

separator

seward = CabinetMember.new(
  first_name: 'William',
  last_name: 'Seward'
)
chase = CabinetMember.new(
  first_name: 'Salmon',
  last_name: 'Chase'
)

lincoln.reload
lincoln.cabinet_members << seward
lincoln.cabinet_members << chase
lincoln.cabinet_members.each { |cm| puts cm }

unlogged { CabinetMember.destroy_all }

separator

seward = CabinetMember.new(
  first_name: 'William',
  last_name: 'Seward'
)
chase = CabinetMember.new(
  first_name: 'Salmon',
  last_name: 'Chase'
)

lincoln.reload
lincoln.cabinet_members = [seward, chase]
lincoln.cabinet_members.each { |cm| puts cm }
