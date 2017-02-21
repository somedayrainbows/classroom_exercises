gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'hash_depth'

class Hash_DepthTest < Minitest::Test

  def test_it_can_find_one_level_of_depth
    this_hash = HashDepth.new
    hash = { :key => "value"}

    assert_equal 1, this_hash.find_depth(hash)
  end

  def test_it_can_find_two_levels_of_depth
    this_hash = HashDepth.new
    hash = { :key_1 => "value",
             :key_2 => { :key_1 => "value" } }

    assert_equal 2, this_hash.find_depth(hash)
  end

  def test_it_can_find_three_levels_of_depth
    this_hash = HashDepth.new
    hash = { :key_1a => { :key_2a => "value"}, :key_1b => "value", :key_1c => { :key_2c => { :kay_3 => "value" } } }

    assert_equal 3, this_hash.find_depth(hash)
  end

end

# hash_bonanza = { :key_1 => { :key_2 => { :key_3_a => { :key_4 => "found me!" }, :key_3_b => "not quite" } } }

#hash_depth(hash_bonanza)
# => 4
