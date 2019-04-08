module SillyString
  def silly(string)
    string.split('').map do |s|
      rand(2) == 1 ? s.upcase : s.downcase
    end.join
  end
end

class President
  include SillyString

  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def silly_name
    silly("#{@first_name} #{@last_name}")
  end
end

george = President.new(first_name: 'George', last_name: 'Washington')
puts george.silly_name
