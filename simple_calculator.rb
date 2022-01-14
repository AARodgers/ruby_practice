class SimpleCalculator
  class UnsupportedOperation < StandardError
  end

  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation
    raise ArgumentError if first_operand.class != Integer || second_operand.class != Integer
    return "Division by zero is not allowed." if second_operand == 0
    "#{first_operand} #{operation} #{second_operand} = #{first_operand.send(operation, second_operand)}"
  end
end

# puts SimpleCalculator.calculate( 1, 0, '/')

def pretty_print_the_result
  result = SimpleCalculator.calculate(1, 2, '+')
  puts "The solution to the problem is #{result}."
end

pretty_print_the_result
