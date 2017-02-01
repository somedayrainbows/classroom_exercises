require 'pry'

ingredients = ["flour", "water", "yeast", "salt"] #global variable pointing to array (also a collection
method = "measure"

def unit
#    method = "mix" #this does NOT rename the global variable
    ["teaspoon", "cup", "pinch"].sample #not a collection b/c will only return a single item
end

ingredients.each do |ingredient| #loops blocks can access global variables, though here, "ingredient" is not accessible outside the loop"
#    method = "mix" #it's going to listen to its local variable first before global
# also, you can rename global variables in loops/blocks (but not methods)
    puts "#{method} one #{unit} of #{ingredient}"
end

if ingredients.count == 4
    cupcake = "delicious" #cupcake returns nil in pry if != 4 or "delicious" if == 4
end

binding.pry
""




=begin
require 'pry'
x = 5
class ScopeLesson #this is the only global scope item now
x = 2 #when wrapped in class ScopeLesson, is no longer global unless moved above class ScopeLesson
# x += 20

def combine_variables(n) #will rely on something outside the scope of this, "n" means its expecting a number
    x = 40
    puts n + x
    end

def x # x is defined as its own method
    30
    end
end
#methods have access to each other when they live in the same global scope

binding.pry
""

def print_doubled_value(x) #passing in x (way to catch it)
    orig_x = x #4
    x *= 2 #8
    puts "the original x is #{orig_x}" 
    puts "x is now #{x}"
end

print_doubled_value(4) #is passing in x to the subscope

puts "global x is #{x}"#30

#print_doubled_value(x) #need to pass through the variable's value to sub-scope 
=end

