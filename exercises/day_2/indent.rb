class Formatter
  def initialize(indent_level = 0)
    @indent_level = indent_level
  end

  def text(string)
    indent + string
  end

  def indent
    ' ' * @indent_level
  end
end

def indented(indent_level)
  formatter = Formatter.new(indent_level)
  yield(formatter)
end

formatter = Formatter.new
puts formatter.text('this is not indented')

indented(2) do |indent_formatter|
  puts indent_formatter.text('this is indented 2 spaces')
  puts indent_formatter.text('this is also indented 2 spaces')
end

indented(4) do |indent_formatter|
  puts indent_formatter.text('this is indented 4 spaces')
  puts indent_formatter.text('this is also indented 4 spaces')
end

puts formatter.text('this is not indented')
