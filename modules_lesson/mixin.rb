
require 'pry'
module OnlineOrder
  def self.confirmation(thing) #these are instance methods in a module
    puts "You got #{thing}."
  end

  def self.review
    puts "Please rate your order within 30 days."
  end
end

  class GrubhubOrder
    def delivery
      puts "Your food will arrive in 45-60 minutes." #these are class methods
    end
  end

  class AmazonOrder
    def delivery
      puts "Your order will arrive in 2 business days."
    end
  end

binding.pry
""
