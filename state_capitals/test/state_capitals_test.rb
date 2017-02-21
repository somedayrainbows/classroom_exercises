gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/state_capitals'
require './lib/state_capitals_dictionary'

class StateCapitolsTest < Minitest::Test

  def test_it_return_a_capital_when_given_a_state_name
    capital_match = StateCapitals.new("Oregon")
    assert_equal "Salem", capital_match.find_capital
  end

  def test_it_returns_unknown_when_states_info_not_known
    skip
    capital_match = StateCapitals.new("Texas")
    assert_equal "Unknown", capital_match.find_capital
  end

end



# * Level 1: Write some code which given a state name ("Oregon") outputs
#   its capital ("Salem")
# * Level 2: Handle the case when a state's information is not known by
#   returning "Unknown"
# * Level 3: Now let's go the other way. Given a capital name ("Denver"),
