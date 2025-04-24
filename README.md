require_relative 'string_calculator'


puts StringCalculator.add("")         # => 0

puts StringCalculator.add("1")        # => 1

puts StringCalculator.add("1,5")       # => 6

puts StringCalculator.add("1\n2,3")    # => 6

puts StringCalculator.add("//;\n1;2")  # => 3


begin

  StringCalculator.add("1,-2,3,-4")

rescue => e

  puts e.message  # => "negative numbers not allowed: -2, -4"

end
