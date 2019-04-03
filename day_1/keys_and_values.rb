george_washington = {
  first_name: 'George',
  last_name: 'Washington',
  birth_year: 1732,
  death_year: 1799
}

puts george_washington[:first_name]
puts george_washington[:last_name]
puts
puts 'Keys:'
puts george_washington.keys
puts
puts 'Values:'
puts george_washington.values
puts

john_adams = {
  'first_name' => 'John',
  'last_name' => 'Adams',
  'birth_year' => 1735,
  'death_year' => 1826
}

puts john_adams['first_name']
puts john_adams['last_name']
puts john_adams[:first_name]
puts john_adams[:last_name]

crazy_stuff = {
  52 => 75,
  [1, 2, 3] => { 4 => 5 }
}

puts crazy_stuff[52]
puts crazy_stuff[[1, 2, 3]]
