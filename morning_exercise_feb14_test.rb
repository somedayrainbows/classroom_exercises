gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'morning_exercise_feb14'

class MorningExerciseFeb14Test < Minitest::Test

# *Baseline:* Given an array, create a hash in which the key is an element in the array and the value is the number of occurrences of that element.
#
# *Extension:* Given the hash from the baseline challenge, print each key-value pair, in descending order by occurrence number, with the phrase “Casey worked 6 night shifts.” If a person only worked one night shift, the phrase should be “Josh worked 1 night shift.”

night_shifts = ["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"]

night_shifts_hash = {}

night_shifts.map { |name|  }
  name.count
