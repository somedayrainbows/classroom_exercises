gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/creditcheck_recheck'

class CreditCheckRecheckTest < Minitest::Test

  def test_the_class_exists
    new_validation = AccountValidation.new("some number")

    assert_instance_of AccountValidation, new_validation
  end

  def test_it_transforms_card_number_to_reversed_individual_integers
    new_validation = AccountValidation.new("5541808923795240")

    assert_equal [0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5], new_validation.transform_string_to_reversed_individual_integer
  end

  def test_it_doubles_every_other_number_by_odd_position
    new_validation = AccountValidation.new([0, 4, 2, 5, 9, 7, 3, 2, 9, 8, 0, 8, 1, 4, 5, 5])

    assert_equal [0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10], new_validation.double_every_odd_position
  end

  def test_it_finds_every_number_in_array_greater_than_9_and_subtracts_9
    new_validation = AccountValidation.new([0, 8, 2, 10, 9, 14, 3, 4, 9, 16, 0, 16, 1, 8, 5, 10])

    assert_equal [0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1], new_validation.find_and_reduce_double_digits
  end

  def test_it_adds_all_numbers_in_the_array_together
    new_validation = AccountValidation.new([0, 8, 2, 1, 9, 5, 3, 4, 9, 7, 0, 7, 1, 8, 5, 1])

    assert_equal 70, new_validation.sum_the_numbers
  end

  def test_it_determines_validity_of_the_number
    new_validation = AccountValidation.new(70)

    assert_equal "The number is valid!", new_validation.validity
  end

end
