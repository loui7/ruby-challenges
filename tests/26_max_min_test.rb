require 'test/unit'
require_relative '../26_max_min'

class GetMinAndMaxNumberFromString < Test::Unit::TestCase
  def test_positives
    assert_equal("23 1", max_min("5 2 9 8 23 1"))
  end
  def test_with_negatives
    assert_equal("38 -9", max_min("15 4 4 38 -9"))
  end
end