presidents = ['George Washington', 'John Adams', 'Thomas Jefferson']

selected_presidents = presidents.select do |president|
  president.length > 10
end

puts selected_presidents


prime_numbers = [2, 3, 5, 7, 11]

selected_prime_numbers = prime_numbers.select do |prime_number|
  prime_number < 10
end

puts selected_prime_numbers
