class StringRepeater
  def initialize(io = Kernel)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    string = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    repeat = @io.gets.chomp.to_i
    result = string * repeat
    @io.puts "Here is your result:"
    @io.puts result
  end
end

# string_repeater = StringRepeater.new()
# string_repeater.run