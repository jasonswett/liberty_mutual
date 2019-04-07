require 'active_record'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  encoding: 'unicode',
  database: 'presidents',
  username: 'postgres',
  password: ''
)
