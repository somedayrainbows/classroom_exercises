gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './night_shift'

class NightShiftTest < Minitest::Test

  attr_reader

  def setup
    @night_shift = NightShift.new
  end

  def test_does_it_exist
    assert_instance_of NightShift, @night_shift
  end

  def test_does_it_total_and_sort_occurences
    assert_equal ({"lauren"=>1, "josh"=>1, "ilana"=>1, "beth"=>2, "andrew"=>2, "sal"=>2, "nate"=>3, "casey"=>6}), @night_shift.total_sorted_occurences(["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"])
  end

  def test_does_it_total_and_sort_again
  assert_equal ({"erin"=>1, "leah"=>4}), @night_shift.total_sorted_occurences(["erin", "leah", "leah", "leah", "leah"])
  end

  def test_does_it_display_shifts_worked
    total_shifts = {"lauren"=>1, "josh"=>1, "ilana"=>1, "beth"=>2, "andrew"=>2, "sal"=>2, "nate"=>3, "casey"=>6}

    assert_equal ("lauren worked 1 night shift.\njosh worked 1 night shift.\nilana worked 1 night shift.\nbeth worked 2 night shifts.\nandrew worked 2 night shifts.\nsal worked 2 night shifts.\nnate worked 3 night shifts.\ncasey worked 6 night shifts."), @night_shift.shiftwork_summary(total_shifts)
  end

end

# *Baseline:* Given an array, create a hash in which the key is an element in the array and the value is the number of occurrences of that element.
#
# *Extension:* Given the hash from the baseline challenge, print each key-value pair, in descending order by occurrence number, with the phrase “Casey worked 6 night shifts.” If a person only worked one night shift, the phrase should be “Josh worked 1 night shift.”

# night_shifts = ["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"]
#
# night_shifts_hash = {}
#
# night_shifts.map { |name|  }
#   name.count
