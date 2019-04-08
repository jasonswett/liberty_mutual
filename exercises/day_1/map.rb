presidents = ['George Washington', 'John Adams', 'Thomas Jefferson']

upcased_presidents = presidents.map do |president|
  president.upcase
end

puts presidents
puts upcased_presidents



prime_numbers = [2, 3, 5, 7, 11]

multiplied_prime_numbers = prime_numbers.map do |prime_number|
  prime_number * 10
end

puts prime_numbers
puts multiplied_prime_numbers
