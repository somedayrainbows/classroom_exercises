require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hash_depth'

# Write a method that takes a hash and returns the depth of the deepest value.

class HashDepthTtest < Minitest::test

  def test_it_can_find_one_level_of_depth
    hd = HashDepth.new
    hash = { :key => "value"}

    assert_equal 1, hd.find_depth(hash)
  end

end

# hash_bonanza = { :key_1 => { :key_2 => { :key_3_a => { :key_4 => "found me!" }, :key_3_b => "not quite" } } }

hash_depth(hash_bonanza)
# => 4
