class PresidentA
  def initialize(first_name)
    @first_name = first_name
  end
end

class PresidentB
  attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name
  end
end

class PresidentC
  attr_reader :first_name
  attr_writer :first_name

  def initialize(first_name)
    @first_name = first_name
  end
end

class PresidentD
  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name
  end
end
