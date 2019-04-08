numbers = [1, 2, 3].map do |number|
  number * 2
end

puts numbers
puts

puts [4, 5, 6].map { |number| number * 2 }
puts

president_names = ['George Washington', 'John Adams', 'Thomas Jefferson']
puts president_names.map { |president_name| president_name.upcase }
puts
puts president_names.map(&:upcase)
puts
