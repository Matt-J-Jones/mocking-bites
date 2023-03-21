class InteractiveCalculator
  def initialize(io = Kernel)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    number_0 = @io.gets.chomp
    @io.puts "Please enter another number"
    number_1 = @io.gets.chomp
    @io.puts "Here is your result:"
    result = number_0.to_i - number_1.to_i
    @io.puts "#{number_0} - #{number_1} = #{result}"
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run
