
gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rpn'

class RPNTest < Minitest::Test

  def test_does_it_calculate
    calc = RPN.new
    numbers = ("1 2 +")

    assert_equal ("1 2 +"), RPN.new.calc
  end

end