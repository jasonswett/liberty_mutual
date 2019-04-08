def run_block_a
  puts 'before block'
  yield
  puts 'after block'
end

run_block_a { puts 'in block' }
puts

def run_block_b
  puts 'before block'
  yield 'arbitrary value'
  puts 'after block'
end

run_block_b { |text| puts text }
