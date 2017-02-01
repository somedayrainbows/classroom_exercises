require 'date'
class Person
    attr_reader :height, :weight, :eyes, :hair, :shoe_size, :married_or_not
    def initialize(height_inches, weight_pounds, eye_color, hair_color, shoe_size, marital_status, birth_date)
        @height = height_inches
        @weight = weight_pounds
        @eyes = eye_color
        @hair = hair_color
        @shoe_size = shoe_size
        @married_or_not = marital_status
        @birthday = birth_date
    end

def height_in_centimeters
    @height * 2.54
    end
def age_today
    current_year = DateTime.new(2017,1,25)
    age_today = current_year - @birthday
    end
def add_hair_color(color) #wrapping instance variable in a method
    @hair << color
    end
#setter method: 
#   def temperature=(new_temperature)
#       @temperature = new_temperature
#      end
end

erin = Person.new(70, 160, "hazel", "brownish", 9.5, "married", DateTime.new(1977,5,23))
p "Person1: #{erin}"

sallie_jo = Person.new(65, 150, "blue", "brown", 8, "single", DateTime.new(1980,1,5))
p "Person2: #{sallie_jo}"

require 'pry'; binding.pry
puts ""

=begin
class Fridge
def initialize(brand, color, temperature, plugged_in, contents)
    @brand       = brand
    @color       = color
    @temperature = temperature
    @plugged_in  = plugged_in
    @contents    = contents
  end
end

# with each .new we are creating a new instance of fridge
# class (like a new "baby")
# p is similar to puts


fridge_1 = Fridge.new("Maytag", "white", 36, true, ["leftover pizza", "yogurt", "soylent"])
p "Number 1: #{fridge_1}"

fridge_2 = Fridge.new("")
p "Number 2: #{fridge_2}"

fridge_3 = Fridge.new
p "Number 3: #{fridge_3}"

# to debug at the end of the file:
require 'pry'; binding.pry
puts "---------"

=begin
class Chair
     def initialize
        puts "hello, world!"
end

office_chair = Chair.new
p "Number 1: #{office_chair}"

ikea_chair = Chair.new
p "Number 2: #{ikea_chair}"

stool = Chair.new
p "Number 3: #{stool}"

class Shoes
    def initialize
        puts "hello, world!"
end

flip_flops = Shoes.new
p "Number 1: #{flip_flops}"

boots = Shoes.new
p "Number 2: #{boots}"

tennis_shoes = Shoes.new
p "Number 3: #{tennis_shoes}"

=end