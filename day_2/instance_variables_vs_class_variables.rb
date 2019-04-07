class President
  @@salary_in_dollars = 25000

  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def name
    "#{@first_name} #{@last_name}"
  end

  def self.salary_in_dollars
    @@salary_in_dollars
  end

  def salary_in_dollars
    @@salary_in_dollars
  end

  def self.set_salary(amount)
    @@salary_in_dollars = amount
  end
end

puts President.salary_in_dollars

george_washington = President.new(
  first_name: 'George',
  last_name: 'Washington'
)

puts "#{george_washington.name}'s salary: $#{george_washington.salary_in_dollars}"
puts

President.set_salary(200000)
puts President.salary_in_dollars

ronald_reagan = President.new(
  first_name: 'Ronald',
  last_name: 'Reagan'
)

puts "#{ronald_reagan.name}'s salary: $#{ronald_reagan.salary_in_dollars}"
