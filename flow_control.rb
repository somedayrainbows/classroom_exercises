puts "Welcome! What's your age?"
user_age = gets.chomp.to_i

until user_age != 0
    puts "Sorry, please enter a number."
    user_age = gets.chomp.to_i
    end

if user_age > 21
    puts "Come on in."
elsif user_age == 21
    puts "Happy birthday year!"
else
    puts "Get out."
end


