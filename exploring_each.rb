require 'pry'

[1,2,3,4,5,6].each do |number|
  if number.even?
    binding.pry
    puts number
    end # binding.pry
end

[1,2,3,4,5,6].each do |number|
  puts number * 3
  end