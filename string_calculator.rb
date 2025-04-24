class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    
    if numbers.start_with?("//")
      delimiter_section, numbers = numbers.split("\n", 2)
      delimiter = delimiter_section[2..-1]
    end

    numbers_array = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = numbers_array.select { |n| n < 0 }
    
    if negatives.any?
      raise "negative numbers not allowed: #{negatives.join(',')}"
    end

    numbers_array.sum
  end
end