    puts "Enter a number to find out if it is prime or not."
    number = gets.chomp
    quotient = #{number} % 2
    If quotient != 0
     number = gets.chomp
        if number > 1 
        puts "This is a prime number"
        else
            puts "This is NOT a prime number" 
        end
    end

############################
    def prime?(number)

        end
        puts prime?(5) # <= "5 is a prime number"
        puts prime?(10) # <= "10 is not a prime number"