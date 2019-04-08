print_name = lambda do |options|
  puts options[:first_name]
  puts options[:last_name]
end

print_name.call(first_name: 'Abraham', last_name: 'Lincoln')
