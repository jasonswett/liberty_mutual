def print_name_a(options = {})
  puts options[:first_name]
  puts options[:last_name]
  puts
end

def print_name_c(first_name:, last_name:)
  puts first_name
  puts last_name
  puts
end

def print_name_d(first_name: 'George', last_name: 'Washington')
  puts first_name
  puts last_name
  puts
end

print_name_a({ first_name: 'Abraham', last_name: 'Lincoln' })
print_name_a(first_name: 'Abraham', last_name: 'Lincoln')
print_name_c(first_name: 'Abraham', last_name: 'Lincoln')
print_name_d
print_name_d(last_name: 'Lincoln')
