# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'binary_search'

########################################################################
# Binary Search Test Suite
#
# Tests the binary search algorithm with various edge cases and scenarios
########################################################################
class TestBinarySearch < Minitest::Test
  def setup; end

  def test_empty_array
    assert_raises ArgumentError do
      binary_search(' ', 9)
    end
    assert_raises ArgumentError do
      binary_search
    end
    assert_nil binary_search([], 3)
  end

  def test_array_with_length_one
    assert_equal 0, binary_search([1], 1)
    assert_equal 0, binary_search([2], 2)
    assert_nil binary_search([2], 3)
    assert_nil binary_search([7], 9)
  end

  def test_array_with_length_two
    assert_equal 1, binary_search([1, 2], 2)
    assert_nil binary_search([1, 2], 4)
  end

  def test_array_with_length_three
    assert_equal 0, binary_search([1, 2, 3], 1)
    assert_equal 1, binary_search([1, 2, 3], 2)
    assert_equal 2, binary_search([1, 2, 3], 3)
    assert_nil binary_search([1, 2, 3], 0)
    assert_nil binary_search([1, 2, 3], 4)
  end

  def test_array_with_length_four
    assert_equal 0, binary_search([1, 2, 3, 4], 1)
    assert_equal 1, binary_search([1, 2, 3, 4], 2)
    assert_equal 2, binary_search([1, 2, 3, 4], 3)
    assert_equal 3, binary_search([1, 2, 3, 4], 4)
    assert_nil binary_search([1, 2, 3, 4], 0)
    assert_nil binary_search([1, 2, 3, 4], 5)
  end

  def test_larger_arrays
    # Test with array of length 5
    assert_equal 0, binary_search([1, 2, 3, 4, 5], 1)
    assert_equal 2, binary_search([1, 2, 3, 4, 5], 3)
    assert_equal 4, binary_search([1, 2, 3, 4, 5], 5)
    assert_nil binary_search([1, 2, 3, 4, 5], 0)
    assert_nil binary_search([1, 2, 3, 4, 5], 6)

    # Test with array of length 6
    assert_equal 0, binary_search([1, 2, 3, 4, 5, 6], 1)
    assert_equal 2, binary_search([1, 2, 3, 4, 5, 6], 3)
    assert_equal 4, binary_search([1, 2, 3, 4, 5, 6], 5)
    assert_equal 5, binary_search([1, 2, 3, 4, 5, 6], 6)
    assert_nil binary_search([1, 2, 3, 4, 5, 6], 0)
    assert_nil binary_search([1, 2, 3, 4, 5, 6], 7)
  end

  def test_duplicate_elements
    # Test with duplicate elements (binary search may find any of the duplicates)
    # The exact index depends on the implementation, but it should find one of the duplicates
    result = binary_search([1, 2, 2, 3], 2)
    assert_includes [1, 2], result, 'Should find one of the duplicate 2s'

    result = binary_search([1, 1, 2, 3], 1)
    assert_includes [0, 1], result, 'Should find one of the duplicate 1s'

    result = binary_search([1, 2, 3, 3], 3)
    assert_includes [2, 3], result, 'Should find one of the duplicate 3s'
  end

  def test_negative_numbers
    assert_equal 0, binary_search([-3, -1, 0, 2, 5], -3)
    assert_equal 1, binary_search([-3, -1, 0, 2, 5], -1)
    assert_equal 2, binary_search([-3, -1, 0, 2, 5], 0)
    assert_equal 3, binary_search([-3, -1, 0, 2, 5], 2)
    assert_equal 4, binary_search([-3, -1, 0, 2, 5], 5)
    assert_nil binary_search([-3, -1, 0, 2, 5], -2)
    assert_nil binary_search([-3, -1, 0, 2, 5], 3)
  end

  def test_edge_cases
    # Test with very large numbers
    assert_equal 0, binary_search([1000, 2000, 3000], 1000)
    assert_equal 2, binary_search([1000, 2000, 3000], 3000)
    assert_nil binary_search([1000, 2000, 3000], 1500)

    # Test with zero
    assert_equal 1, binary_search([-1, 0, 1], 0)
    assert_equal 0, binary_search([0, 1, 2], 0)

    # Test with single element edge cases
    assert_equal 0, binary_search([0], 0)
    assert_nil binary_search([0], 1)
    assert_nil binary_search([1], 0)
  end

  def test_invalid_inputs
    # Test with non-array inputs
    assert_raises ArgumentError do
      binary_search(nil, 1)
    end
    assert_raises ArgumentError do
      binary_search('string', 1)
    end
    assert_raises ArgumentError do
      binary_search(123, 1)
    end
    assert_raises ArgumentError do
      binary_search({}, 1)
    end

    # Test with missing arguments
    assert_raises ArgumentError do
      binary_search
    end
    assert_raises ArgumentError do
      binary_search([1, 2, 3])
    end

    # Test with non-numeric targets
    assert_raises ArgumentError do
      binary_search([1, 2, 3], nil)
    end
    assert_raises ArgumentError do
      binary_search([1, 2, 3], 'string')
    end
    assert_raises ArgumentError do
      binary_search([1, 2, 3], [])
    end
  end

  def test_performance_edge_cases
    # Test with arrays that would cause deep recursion
    large_array = (1..100).to_a
    assert_equal 0, binary_search(large_array, 1)
    assert_equal 49, binary_search(large_array, 50)
    assert_equal 99, binary_search(large_array, 100)
    assert_nil binary_search(large_array, 0)
    assert_nil binary_search(large_array, 101)
  end
end
