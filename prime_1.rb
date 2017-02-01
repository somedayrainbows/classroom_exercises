# def prime?(number)
#  your code here    
# end

# puts prime?(5) # <= "5 is a prime number"
# puts prime?(10) # <= "10 is not a prime number"
########################### 
  # problem: allow a user to input a numner and determine whether it is prime or not.
  # define the method "prime?"
  # print for the user "Enter a number to find out if it is prime or not."
  # then prompt the user for an input. make sure it's an integer.
  # 
  
  def prime?(number)
    
   # puts "Enter a number to find out if it is prime or not."
   # number = gets.chomp.to_i
   # quotient = number % 2 or number % 3
    
   # if quotient != 0 and quotient > 1
   if number 
            puts "#{number} is a prime number"
        else
            puts "#{number} is NOT a prime number" 
        end
    end

    puts prime?(3)

############################
# Challenge 2
# def find_primes(quantity)
    # your code here
# end

# puts find_primes(5) #<= "the first 5 prime numbers are 2, 3, 5, 7, 11"
# puts find_primes(3) # <= "the first 3 prime numbers are 2, 3, 5" 

# def count_prime(numbers)
    # your code here
# end

# puts count_prime([1,2,3,4,5,6,7,8,9,10]) # <= "this array has 10 numbers and 4 are prime: 2, 3, 5, 7"