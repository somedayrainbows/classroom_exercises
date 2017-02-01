#require 'pry'

class Mather
  def initialize(num) 
    @num = num
  end

  def calculate
    if @num == 0 #4 is not true so go down to else
      "that's a negative ghost rider, the pattern is full"
    else
      doubled = doubler(@num) #now i'm calling the doubler method here still passing the number 4 through this
      squared = squarer(doubled) #now i'm calling the squarer method here passing the doubled value to it
      return squared
    end
  end

  def doubler(number) #run the doubler from above using 4 and return the value to doubled = (this new value)
    puts "I'm a doublin!"
    number * 2
  end

  def squarer(number) #run the squarer from above using the doubled value and return the value to squared = (this new value)
    puts "I'm a squarin!"
    #binding.pry
    number * number # number.first * number.first is a hacky way to do it
  end
end

mather = Mather.new(4)  #created a new instance with the value 4
puts mather.calculate #running calculate method on the new instance of Mather (called mather)