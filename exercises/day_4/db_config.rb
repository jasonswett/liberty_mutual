require 'active_record'
require 'pg'
require_relative './president'
require_relative './cabinet_member'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  encoding: 'unicode',
  database: 'presidents',
  username: 'postgres',
  password: ''
)

def query_logging(option)
  logger = option == :on ? Logger.new(STDOUT) : nil
  ActiveRecord::Base.logger = logger
end

def unlogged(&block)
  query_logging :off
  block.call
  query_logging :on
end

def separator
  puts
  puts '-' * 30
  puts
end

def clean_database
  unlogged do
    CabinetMember.destroy_all
    President.destroy_all
  end
end

query_logging :on
