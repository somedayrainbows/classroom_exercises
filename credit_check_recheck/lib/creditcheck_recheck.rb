
# 1. Transform the card number (card_number) string to an array that contains the numbers split into individual items in the array.

# 2. Then double the array's contents ONLY by the odd index positions. Return an array with the new values for each integer.

# 3. Find every digit in the array that is greater than 9 (which will yield a 2-digit number) and add the two digits together (i.e. 12 is 1+2 = 3). Actually, no, just subtract 9 instead to get the same number.

# 4. Find the sum of all numbers in the array.

# 5. determine the total sum modulo 10. if the result is 0, the account number is valid according to the algorithm.

class AccountValidation
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def transform_string_to_reversed_individual_integer
    number.chars.reverse.map do |number|
      number.to_i
    end
  end

  def double_every_odd_position
    number.map.with_index do |each_number, index|
      if index.odd?
        each_number * 2
      else
        each_number
      end
    end
  end

  def find_and_reduce_double_digits
    number.map do |each_number|
      if each_number > 9
        each_number - 9
      else
        each_number
      end
    end
  end

  def sum_the_numbers
    number.reduce(:+)
  end

  def validity
    if number % 10 == 0
      "The number is valid!"
    else
      "The number is not valid!"
    end
  end

end
