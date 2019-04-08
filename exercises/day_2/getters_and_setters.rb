class StateA
  def initialize(name)
    @name = name
  end
end

class StateB
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class StateC
  attr_reader :name
  attr_writer :name

  def initialize(name)
    @name = name
  end
end

class StateD
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
