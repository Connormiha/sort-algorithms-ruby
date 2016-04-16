require "test/unit"

['bubble', 'bubble_v2', 'insertion'].each do |item|
  require_relative "../src/#{item}"
end

$tests = [BubbleSort, BubbleSort_v2, InsertionSort]

class TestSort < Test::Unit::TestCase

  $tests.each do |item|
    define_method("test_long_array_#{item}") do
      assert_equal(item.sort([1, 5, 9, 12, -10, 0, 15, 20, 100, 4]), [-10, 0, 1, 4, 5, 9, 12, 15, 20, 100], "Should sort long array")
    end

    define_method("test_simple_array_#{item}") do
      assert_equal(item.sort([]), [], "Should sort empty array")
      assert_equal(item.sort([1]), [1], "Should sort one element array")
      assert_equal(item.sort([2, 1]), [1, 2], "Should sort [2, 1] array")
      assert_equal(item.sort([1, 0, 0, 0]), [0, 0, 0, 1], "Should sort [1, 0, 0, 0]")
      assert_equal(item.sort([1, 0, 0, 1]), [0, 0, 1, 1], "Should sort [1, 0, 0, 1]")
      assert_equal(item.sort([0, 0, 0, 1]), [0, 0, 0, 1], "Should sort [0, 0, 0, 1]")
      assert_equal(item.sort([0, 0, 0, 0]), [0, 0, 0, 0], "Should sort [0, 0, 0, 0]")
      assert_equal(item.sort([0, 3, 0]), [0, 0, 3], "Should sort [0, 3, 0]")
    end
  end

end
