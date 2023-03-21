class InteractiveCalculator
  def initialize(io = Kernel)
    @io = io
  end

  def run
    puts "Hello. I will subtract two numbers."
    puts "Please enter a number"
    number_0 = gets.chomp
    puts "Please enter another number"
    number_1 = gets.chomp
    puts "Here is your result:"
    result = number_0.to_i-number_1.to_i
    puts "#{number_0} - #{number_1} = #{result}"
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run
