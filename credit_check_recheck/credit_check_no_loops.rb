# Problem: Determine the validity of a credit card number according to the Luhn Algorithm
#
# 1. Transform the card number (card_number) string to an array (split the numbers into individual items in the array)
# so that I can work with the individual positions in the array (numbers). Name the new array (individual_numbers).
#
# 2. Then transform the array's contents from strings to integers so that we can do some math. Name this
# integer array something new (individual_integers).
#
# 3. split the even position integers from the odd. Create new files for odd (doubles) vs even (singles).
#
# 4. Double each number in the doubles array and name the new array (doubled).
#
# 5. Find every digit in the Doubled array that is greater than 9 (which will yield a 2-digit number) and add the
# two digits together (i.e. 12 is 1+2 = 3). Actually, no, just subtract 9 instead to get the same number.
# call this new array doubled_subtracted.
#
# 6. Find the sum of all numbers in the doubleds_subtracted array. Call this new array doubleds_sum
# 
# 7. Find the sum of all numbers in the singles array, call the new array singles_sum
#
# 8. Add singles_sum and doubled_sum. Print the total sum of the two arrays.
#
# 9. Determine the total sum number modulo 10. If the result is 0, the account number is valid according to
# the algorithm.
###########################################################################
# You will have today and tomorrow's morning exercise time to work on this:
# Return to the credit check markdown:
# http://backend.turing.io/module1/projects/credit_check
# Recreate the project, but do it without using any arrays, enumerables,
# or loops. 
###########################################################################

#require 'pry'

class AccountValidation
attr_reader :num

    def initialize(num)
        @num = num
    end

    def validate
        sum += num[-1].to_i
        if num[-2].to_i *2
          sum += ((num))
          else
            sum +=


        #mapped_number = num.reverse

        doubles_mapped = [mapped_number[0].to_i, mapped_number[1].to_i, mapped_number[2].to_i, mapped_number[3].to_i,] #mapped_number.map.with_index { |number, index| index.odd? ? number * 2 : number }
        doubles_subtracted = doubles_mapped.map { |number| number>9 ? number-9 : number }
        total_sum = doubles_subtracted.reduce(:+)
        if total_sum % 10 == 0
            puts "The number is valid!"
            valid = true
        else  
            puts "The number is not valid!"
        end
    end 

end

validator = AccountValidation.new("342801633855673")
validator.validate



#card_number = "6011797668868728"
#valid = false

#individual_numbers = card_number.chars

#individual_integers = individual_numbers.map { |number| number.to_i }

#need to get the index positions of the numbers to be able to do math on a number based on its index position
# pull out those to be doubled into a new array?
# (single-line syntax) array.each { |item| item.do_something }

#doubles = individual_integers.values_at(*individual_integers.each_index.select(&:even?))
#singles = individual_integers.values_at(*individual_integers.each_index.select(&:odd?))

#doubled = doubles.map { |number| number * 2 } #doubled is the doubles array *after* each number has been doubled

#doubled_subtracted = doubled.map{ |number| (number>9 ? number-9 : number) }

#singles_sum = singles.inject(0, :+)

#doubled_sum = doubled_subtracted.inject(0, :+)

#total_sum = doubled_sum + singles_sum

# =begin
# if total_sum % 10 == 0
#     puts "The number is valid!"
#     valid = true
#     else  
#     puts "The number is not valid!"
# end 
# =end

#binding.pry
#""


# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"