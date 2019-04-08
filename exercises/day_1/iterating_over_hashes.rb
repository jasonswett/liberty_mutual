george_washington = {
  first_name: 'George',
  last_name: 'Washington',
  birth_year: 1732,
  death_year: 1799
}

george_washington.each do |key, value|
  puts "#{key} was #{value}"
end
